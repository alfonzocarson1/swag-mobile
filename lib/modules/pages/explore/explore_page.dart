import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';
import 'package:swagapp/modules/blocs/chat/chat_bloc.dart';

import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/data/filters/filters_service.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';
import 'package:swagapp/modules/models/filters/dynamic_filters.dart';

import ' shop_by_category_page.dart';

import '../../common/ui/custom_app_bar.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../cubits/alert/alert_cubit.dart';
import '../../cubits/explore/get_explore_cubit.dart';
import '../../cubits/listing_for_sale/get_listing_for_sale_cubit.dart';
import '../../cubits/peer_to_peer_payments/peer_to_peer_payments_cubit.dart';
import '../../cubits/sold/get_sold_cubit.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';

import '../../models/explore/explore_payload_model.dart';
import '../../routes/app_routes.dart';
import 'account_info.dart';
import 'staff_picks_page.dart';
import 'unicorn_covers_page.dart';
import 'whats_hot_page.dart';

class ExplorePage extends StatefulWidget {
  static const name = '/ExplorePage';
  const ExplorePage({Key? key, required this.pageFromExplore})
      : super(key: key);

  final Function() pageFromExplore;

  static Route route(Function() pageFromExplore) => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => ExplorePage(pageFromExplore: pageFromExplore),
      );

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> with ChannelEventHandler {
  bool _isLogged = false;
  bool _hasJustSignedUp = false;

  

  late final ScrollController? _scrollController =
      PrimaryScrollController.of(context);

  String chatUrl = '';

  @override
  void initState() {

    this.initSendBirdApp();
    this.loadDynamicFilters();
    getIt<AlertCubit>().updateAletBadget();
    context
        .read<ChatBloc>()
        .sendBirdSdk
        .addChannelEventHandler('identifier', this);

    getIt<PeerToPeerPaymentsCubit>().getPyments();

    getIt<ExploreCubit>()
        .getUnicorn(const ExploreRequestPayloadModel(unicornFlag: true));
    getIt<ExploreCubit>()
        .getWhatsHot(const ExploreRequestPayloadModel(whatsHotFlag: true));

    getIt<ExploreCubit>()
        .getStaff(const ExploreRequestPayloadModel(staffPicksFlag: true));

    this._isLogged = getIt<PreferenceRepositoryService>().isLogged();
    this._hasJustSignedUp =
        getIt<PreferenceRepositoryService>().hasJustSignedUp();

    if (!_isLogged) {
      getIt<PreferenceRepositoryService>().saveloginAfterGuest(true);
    }
    if (_isLogged && _hasJustSignedUp) {
      getIt<PreferenceRepositoryService>().saveHasJustSignedUp(false);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    getIt<PreferenceRepositoryService>().setPageFromExplore(0);

    return Scaffold(
      extendBodyBehindAppBar: false,
      resizeToAvoidBottomInset: true,
      backgroundColor: Palette.current.blackSmoke,
      appBar: !_isLogged ? CustomAppBar() : null,
      body: Column(
        children: [
          Expanded(
            child: LayoutBuilder(builder: (context, viewportConstraints) {
              return SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: viewportConstraints.maxHeight,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: _isLogged ? 50 : 0),
                      child: Column(
                        children: [
                          ShopByCategory(
                            pageFromExplore: () {
                              widget.pageFromExplore();
                            },
                          ),
                          const UnicornCoversPage(),
                          WhatsHotExplorePage(
                            pageFromExplore: () {
                              widget.pageFromExplore();
                            },
                          ),
                          const StaffPicksPage()
                        ],
                      ),
                    )),
              );
            }),
          ),
        ],
      ),
    );
  }

  void navigateToAccountInfoPage() {
    bool loginAfterGuest =
        getIt<PreferenceRepositoryService>().loginAfterGuest();

    Future.delayed(Duration(milliseconds: loginAfterGuest ? 5000 : 7000), () {
      context.push(AppRoutes.accountInfo);
    });
  }

  void loadDynamicFilters() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      DynamicFilters dynamicFilters =
          await getIt<FiltersService>().getDynamicFilters();
      await getIt<PreferenceRepositoryService>()
          .saveDynamicFilters(dynamicFilters);
    });
  }

  void initSendBirdApp() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      ChatBloc chatBloc = context.read<ChatBloc>();

      await chatBloc.getUserSendBirdToken();
      await chatBloc.initSendBirdApp();
      await chatBloc.getChannels();
    });
  }

  @override
  void onMessageReceived(BaseChannel channel, BaseMessage message) async {
    ChatBloc chatBloc = context.read<ChatBloc>();
    ChatData chatData = chatBloc.state.chats.firstWhere((ChatData chat) {
      return chat.channel.channelUrl == channel.channelUrl;
    });

    getIt<ListingProfileCubit>().loadResults();

    await chatBloc.receiveMessage(
      chatData: chatData,
      message: message,
    );

    super.onMessageReceived(channel, message);
  }

  @override
  void onChannelMemberCountChanged(List<GroupChannel> channels) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      if (this.chatUrl != channels[0].channelUrl) {
        this.chatUrl = channels[0].channelUrl;
        await context
            .read<ChatBloc>()
            .startNewChat(channels[0].channelUrl, true);
      }
    });
    super.onChannelMemberCountChanged(channels);
  }
}
