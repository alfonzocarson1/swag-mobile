import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../pages/login/sign_in_page.dart';
import '../utils/palette.dart';
import 'custom_app_bar.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key, this.title, required this.urlPage});

  final String? title;
  final String urlPage;

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late WebViewController controller;
  bool loadingBar = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {
            setState(() {
              loadingBar = false;
            });
          },
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.urlPage));
    return WillPopScope(
        onWillPop: () async {
          await SystemChrome.setPreferredOrientations(
              [DeviceOrientation.portraitUp]);
          return true;
        },
        child: Scaffold(
          backgroundColor: Palette.current.blackSmoke,
          appBar: CustomAppBar(
            onRoute: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignInPage(),
                ),
              );
            },
          ),
          body: Stack(clipBehavior: Clip.hardEdge, children: [
            loadingBar == true
                ? Center(
                    child: CircularProgressIndicator(
                      color: Palette.current.primaryNeonGreen,
                      backgroundColor: Colors.white,
                    ),
                  )
                : const SizedBox(),
            Expanded(child: WebViewWidget(controller: controller)),
          ]),
        ));
  }
}
