import 'package:flutter/material.dart';

import 'bookmark.dart';

void main() {
  runApp(MyBookmarksApp());
}

class MyBookmarksApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookmarksPage(),
    );
  }
}

class BookmarksPage extends StatelessWidget {
  List<Bookmark> bookmarksList = [
    Bookmark("Flutter", "https://flutter.dev"),
    Bookmark("Google", "https://google.com")

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Bookmarks"),
      ),
      body: BookmarksListWidget(bookmarksList),
    );
  }
}

class BookmarksListWidget extends StatelessWidget {
  List<Bookmark> bookmarksList;

  BookmarksListWidget(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        BookmarkListItemWidget(bookmarksList[0]),
        BookmarkListItemWidget(bookmarksList[1]),
      ],
    );
  }
}

class BookmarkListItemWidget extends StatelessWidget{
  Bookmark bookmark;

  BookmarkListItemWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(bookmark.title, style: Theme.of(context).textTheme.title),
          SizedBox(height: 6),
          Text(bookmark.link, style: Theme.of(context).textTheme.subhead),
        ],
      ),
    );
  }
}


