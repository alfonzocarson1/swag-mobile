import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../../generated/l10n.dart';
import '../../../../common/ui/dynamic_toast_messages.dart';
import '../../../../common/ui/pushed_header.dart';
import '../../../../common/utils/custom_route_animations.dart';
import '../../../../common/utils/palette.dart';
import '../../../../common/utils/utils.dart';

class StripeKycPage extends StatefulWidget {
  static const name = "/kyc-splash-dialog";

  static Route route(final BuildContext context, String sessionUrl) =>
      PageRoutes.dialog(
        settings: const RouteSettings(name: name),
        builder: (context) => StripeKycPage(sessionUrl: sessionUrl),
        context: context,
      );

  final String sessionUrl;

  const StripeKycPage({super.key, required this.sessionUrl});

  @override
  State<StripeKycPage> createState() => _StripeKycPageState();
}

class _StripeKycPageState extends State<StripeKycPage> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController(
      onPermissionRequest: (request) {
        debugPrint(
          "WebViewController::onPermissionRequest(${request.types.map((e) => e.name).join(", ")})",
        );
        request.grant().onError((error, stackTrace) {
          debugPrintStack(
            label: error.toString(),
            stackTrace: stackTrace,
          );
        });
      },
    );
    controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    controller.setBackgroundColor(const Color(0x00000000));
    controller.setNavigationDelegate(NavigationDelegate(
      onNavigationRequest: (request) {
        if (request.url.contains("verify.stripe.com")) {
          return NavigationDecision.navigate;
        }
        launchBrowserAppFromLink(request.url);
        return NavigationDecision.prevent;
      },
      onPageFinished: (url) {
        if (url.contains("success")) {
          SnackBar(
            duration: const Duration(seconds: 3),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height / 1.3,
            ),
            backgroundColor: Colors.transparent,
            content: ToastMessage(
              message: S.of(context).kyc_done,
            ),
            dismissDirection: DismissDirection.none,
          );
        }
      },
    ));
    controller.loadRequest(Uri.parse(widget.sessionUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PushedHeader(
        showBackButton: true,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(S.of(context).account_title.toUpperCase(),
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
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
