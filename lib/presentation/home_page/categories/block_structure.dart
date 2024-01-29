import 'package:flutter/cupertino.dart';
import 'package:sellers/presentation/home_page/categories/page_config/block_states.dart';
import 'package:sellers/presentation/home_page/categories/category.dart';

class CategoryPageConfig {
  static const _pageLimit = 5;
  final List<ProductCategory> _categories;

  int _pageNum = 1;

  CategoryPageConfig(this._categories);

  List<Widget> getPages() {
    final List<ProductCategory> pageCategories = [];
    final List<Widget> pages = [];
    for (int i = 0; i < _categories.length; i += 1) {
      if ((i + 1) % _pageLimit == 0) {
        pages.add(_getPage(pageCategories));
        pageCategories.clear();
      }
      pageCategories.add(_categories[i]);
    }
    return pages;
  }

  Widget _getPage(List<ProductCategory> categories) {
    final iterator = categories.iterator;
    if (_pageNum > 2) {
      _pageNum = 1;
    }
    if (_pageNum > 0) {
      _pageNum += 1;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            SmallBlock(categories.first),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        if (iterator.moveNext()) MediumBlock(iterator.current),
                        const SizedBox(width: 10),
                        if (iterator.moveNext()) SmallBlock(iterator.current)
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  if (iterator.moveNext()) SmallBlock(iterator.current)
                ],
              ),
            )
          ],
        ),
      );
    } else {
      _pageNum += 1;
      return Row(
        children: [
          BigBlock(categories.first),
          Column(
            children: [
              Row(
                children: [
                  if (iterator.moveNext()) MediumBlock(iterator.current),
                  if (iterator.moveNext()) SmallBlock(iterator.current)
                ],
              ),
              if (iterator.moveNext()) SmallBlock(iterator.current)
            ],
          )
        ],
      );
    }
  }
}
