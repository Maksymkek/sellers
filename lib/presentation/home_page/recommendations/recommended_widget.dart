import 'package:flutter/cupertino.dart';
import 'package:sellers/presentation/common_widgets/product_list/product_list_widget.dart';

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Special for you',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
              ),
              Icon(
                CupertinoIcons.rectangle_grid_2x2_fill,
                color: CupertinoColors.darkBackgroundGray,
              )
            ],
          ),
        ),
        ProductListWidget(),
      ],
    );
  }
}
