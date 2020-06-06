import 'package:bookmark/util/navigation_util.dart';
import 'package:flutter/material.dart';

import '../model/bookmark.dart';

class BookmarkListTileWidget extends StatelessWidget {
  final Bookmark bookmark;

  BookmarkListTileWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(bookmark.title, style: Theme.of(context).textTheme.title),
      subtitle: Text(bookmark.link, style: Theme.of(context).textTheme.subhead),
      onTap: () => print(bookmark.title),
    );
  }
}
