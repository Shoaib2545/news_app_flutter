import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  const ArticleView({Key? key, this.blogUrl}) : super(key: key);

  final String? blogUrl;

  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  final Completer<WebViewController> _completer =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'App',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: WebView(
        onWebViewCreated: ((WebViewController webViewController) {
          _completer.complete(webViewController);
        }),
        initialUrl: widget.blogUrl,
      ),
    );
  }
}
