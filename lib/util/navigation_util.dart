import 'package:bookmark/page/add_bookmark_page.dart';
import 'package:flutter/material.dart';
import 'package:bookmark/page/view_bookmark_page.dart';

void navigateToViewBookmarkPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => ViewBookmarkPage()),
  );
}

void navigateToAddBookmarkPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => AddBookmarkPage(),
    ),
  );
}