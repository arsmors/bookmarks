import 'package:bookmark/util/navigation_util.dart';
import 'package:flutter/material.dart';

import '../model/bookmark.dart';

class BookmarkGridItemWidget extends StatelessWidget {
  final Bookmark bookmark;

  BookmarkGridItemWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: InkWell(
          onTap: () => navigateToViewBookmarkPage(bookmark, context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(bookmark.title, style: Theme.of(context).textTheme.title),
              SizedBox(height: 6),
              Text(bookmark.link, style: Theme.of(context).textTheme.subhead),
            ],
          ),
        ),
      ),
    );
  }
}
