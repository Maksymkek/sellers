import 'package:flutter/cupertino.dart';
import 'package:sellers/presentation/common_widgets/product_list/product/product_widget.dart';
import 'package:sellers/presentation/common_widgets/product_list/product_grid_widget.dart';

class ProductListWidget extends StatefulWidget {
  const ProductListWidget({super.key});

  @override
  State<ProductListWidget> createState() => _ProductListWidgetState();
}

class _ProductListWidgetState extends State<ProductListWidget> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProductGridWidget(),
          ProductGridWidget(),
          ProductGridWidget(),
          ProductGridWidget(),
        ],
      ),
    );
  }
}
