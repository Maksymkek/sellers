import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoTextField(
      placeholder: 'Search',
      decoration: BoxDecoration(
          color: CupertinoColors.lightBackgroundGray,
          border: Border.fromBorderSide(BorderSide.none),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      prefix: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Icon(
          CupertinoIcons.search,
          size: 18,
          color: CupertinoColors.placeholderText,
        ),
      ),
    );
  }
}
