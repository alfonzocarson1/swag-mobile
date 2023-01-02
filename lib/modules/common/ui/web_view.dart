import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../utils/custom_route_animations.dart';
import '../utils/palette.dart';
import 'handler.dart';

class WebViewPage extends StatefulWidget {
  static const name = '/WebView';
  const WebViewPage({super.key, this.title, required this.urlPage});

  static Route route(
          final BuildContext context, String? title, String urlPage) =>
      PageRoutes.modalBottomSheet(
        isScrollControlled: true,
        isDismissible: true,
        enableDrag: false,
        height: 0.8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26),
        ),
        settings: const RouteSettings(name: name),
        builder: (context) => WebViewPage(
          title: title,
          urlPage: urlPage,
        ),
        context: context,
      );

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
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF181818),
          borderRadius: BorderRadius.circular(26),
        ),
        constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height * 0.8,
            maxHeight: MediaQuery.of(context).size.height * 0.8),
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Stack(clipBehavior: Clip.hardEdge, children: [
          loadingBar == true
              ? Center(
                  child: CircularProgressIndicator(
                    color: Palette.current.primaryNeonGreen,
                    backgroundColor: Colors.white,
                  ),
                )
              : const SizedBox(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 15,
              ),
              const HandlerWidget(),
              const SizedBox(
                height: 20,
              ),
              Expanded(child: WebViewWidget(controller: controller)),
            ],
          ),
        ]),
      ),
    );
  }
}
