import 'package:bookmark/model/bookmark.dart';
import 'package:bookmark/widget/view_web_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewBookmarkPage extends StatelessWidget {
  Bookmark bookmark;
  ViewBookmarkPage(this.bookmark);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(bookmark.title)),
      body: ViewWebPageWidget(bookmark.link),
    );
  }
}


