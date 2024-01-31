import 'package:flutter/cupertino.dart';
import 'package:sellers/presentation/home_page/categories/block_structure.dart';
import 'package:sellers/presentation/home_page/categories/category.dart';
import 'package:sellers/presentation/home_page/categories/page_selector/page_selector.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({super.key});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  late final List<Widget> pages;

  @override
  void initState() {
    super.initState();
    final categories = [
      ProductCategory('', ''),
      ProductCategory('', ''),
      ProductCategory('', ''),
      ProductCategory('', ''),
      ProductCategory('', ''),
      ProductCategory('', ''),
      ProductCategory('', ''),
      ProductCategory('', ''),
      ProductCategory('', ''),
      ProductCategory('', ''),
    ];
    pages = CategoryPageConfig(categories).getPages();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 171.4,
            child: PageView(
              children: pages,
            ),
          ),
          const SizedBox(height: 10),
          const PageSelectorWidget()
        ],
      ),
    );
  }
}
