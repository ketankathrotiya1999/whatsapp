import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      color: Colors.white,
      child: CupertinoTextField(
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(10),
        ),
        prefix: Padding(
          padding:  EdgeInsets.only(left: 10),
          child: Icon(
            CupertinoIcons.search,
            color: CupertinoColors.systemGrey,
          ),
        ),
        placeholder: 'Search',
        clearButtonMode: OverlayVisibilityMode.editing,
        onSubmitted: (value) {
          // Handle search submission here
          print('Search query: $value');
        },
      ),
    );
  }
}