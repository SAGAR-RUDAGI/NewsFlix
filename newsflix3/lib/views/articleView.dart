import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class ArticleView extends StatefulWidget {
  final String blogUrl;
  ArticleView({this.blogUrl});

  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  final Completer<WebViewController> _completer = Completer<WebViewController>();
  InAppWebViewController con;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: InAppWebView(
        initialUrl: widget.blogUrl,
        initialOptions: InAppWebViewWidgetOptions(
            inAppWebViewOptions: InAppWebViewOptions(
            debuggingEnabled: true,
          )
        ),
        onWebViewCreated: ((InAppWebViewController webViewController){
          con=webViewController;
        }
      )
    ));
  }
}