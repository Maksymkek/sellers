import 'package:flutter/cupertino.dart';
import 'package:sellers/presentation/home_page/categories/page_selector/selector_pimple.dart';

class PageSelectorWidget extends StatelessWidget {
  const PageSelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: CupertinoColors.lightBackgroundGray,
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 7.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SelectorPimpleWidget(isSelected: true),
            SelectorPimpleWidget(isSelected: false),
            SelectorPimpleWidget(isSelected: false),
          ],
        ),
      ),
    );
  }
}
