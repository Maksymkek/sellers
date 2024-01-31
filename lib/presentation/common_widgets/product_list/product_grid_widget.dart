import 'package:flutter/cupertino.dart';
import 'package:sellers/presentation/common_widgets/product_list/product/product_widget.dart';

class ProductGridWidget extends StatelessWidget {
  const ProductGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          Expanded(child: ProductWidget()),
          SizedBox(width: 10),
          Expanded(child: ProductWidget()),
        ],
      ),
    );
  }
}
