import 'package:flutter/material.dart';
import 'package:swagapp/modules/di/injector.dart';
import '../../../../generated/l10n.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/utils.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../stripe/models/cards_response_model.dart';

class CardsPage extends StatefulWidget {
  const CardsPage({super.key});

  static const name = '/CardsPage';

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const CardsPage(),
      );

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  @override
  Widget build(BuildContext context) {
    CardsResponseModel? cardsResponseModel =
        getIt<PreferenceRepositoryService>().cardsResponseModel();
    return Scaffold(
      appBar: PushedHeader(
        showBackButton: true,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
              S
                  .of(context)
                  .premium_memberatomic_drop_payments_title
                  .toUpperCase(),
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w300,
                  fontFamily: "KnockoutCustom",
                  fontSize: 30,
                  color: Palette.current.primaryNeonGreen)),
        ),
        height: 70,
      ),
      backgroundColor: Palette.current.primaryEerieBlack,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Expanded(
          child: LayoutBuilder(builder: (context, viewportConstraints) {
            return ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return selectSettings(
                          context,
                          'assets/icons/atomic_drop_payments_icon.png',
                          '${cardsResponseModel.data?[index].card?.brand?.capitalize()} - *****${cardsResponseModel.data?[index].card?.last4}',
                          '',
                          () async {},
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 10,
                            color: Palette.current.darkGray,
                          ),
                          null);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 0.2,
                        child: Container(
                          color: Palette.current.grey,
                        ),
                      );
                    },
                    itemCount: cardsResponseModel.data?.length ?? 0));
          }),
        ),
      ),
    );
  }
}
