import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sellers/presentation/common_widgets/appbar_widget.dart';
import 'package:sellers/presentation/common_widgets/dock_widget/dock_widget.dart';
import 'package:sellers/presentation/common_widgets/product_list/product_list_widget.dart';
import 'package:sellers/presentation/common_widgets/search_widget.dart';
import 'package:sellers/presentation/home_page/categories/categories_widget.dart';
import 'package:sellers/presentation/home_page/recommendations/recommended_widget.dart';

class HomePageScreenWidget extends StatelessWidget {
  const HomePageScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CupertinoColors.white,
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          ListView(children: const [
            SizedBox(height: 100),
            SearchWidget(),
            CategoriesWidget(),
            RecommendedWidget(),
            SizedBox(height: 100)
          ]),
          const AppBarWidget(),
          const DockWidget()
        ]));
  }
}
