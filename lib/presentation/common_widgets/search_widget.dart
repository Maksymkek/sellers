import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: CupertinoTextField(
        placeholder: 'Search',
        placeholderStyle:
            TextStyle(color: CupertinoColors.placeholderText, fontSize: 22),
        style: TextStyle(color: CupertinoColors.black, fontSize: 22),
        decoration: BoxDecoration(
            color: CupertinoColors.lightBackgroundGray,
            border: Border.fromBorderSide(BorderSide.none),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        prefix: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(
            CupertinoIcons.search,
            size: 22,
            color: CupertinoColors.placeholderText,
          ),
        ),
      ),
    );
  }
}
