import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HalamanWebview extends StatefulWidget {
  const HalamanWebview({Key? key}) : super(key: key);

  @override
  State<HalamanWebview> createState() => _HalamanWebviewState();
}

class _HalamanWebviewState extends State<HalamanWebview> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 720,
              width: 400,
              child: WebView(
                initialUrl: "https://flutter.dev",
              ),
            )
          ],
        ),
      ),
    );
  }
}
