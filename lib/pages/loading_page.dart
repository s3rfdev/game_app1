import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:game_balls/config.dart';
import 'package:game_balls/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:back_button_interceptor/back_button_interceptor.dart';

class LoadingPage extends StatefulWidget {
  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  String link = Config.configUrl;

  InAppWebViewController? _controller;
  bool initFlag = true;
  bool isLoading = true;

  @override
  void initState() {
    BackButtonInterceptor.add(myInterceptor);
    super.initState();
  }

  bool myInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
    if (isLoading == false) {
      _controller?.goBack();
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    if (initFlag) {
      initFlag = false;
      Timer.periodic(Duration(seconds: 3), (timer) async {
        var url = await _controller?.getUrl();

        if (url != null && link != url.toString()) {
          print('Redirect $link ${url.toString()}');
          setState(() {
            isLoading = false;
          });
        } else if (url != null && link == url.toString()) {
          Get.off(HomePage());
        }
      });
    }
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: InAppWebView(
              initialUrlRequest: URLRequest(url: WebUri(link)),
              initialSettings: InAppWebViewSettings(
                  // transparentBackground: true,
                  safeBrowsingEnabled: false,
                  isFraudulentWebsiteWarningEnabled: false),
              onWebViewCreated: (controller) async {
                _controller = controller;
              },
            ),
          ),
          if (isLoading)
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
        ],
      ),
    );
  }
}
