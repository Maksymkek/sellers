import 'package:flutter/cupertino.dart';
import 'package:sellers/presentation/home_page/categories/category.dart';

class Block extends StatelessWidget {
  const Block(this.flex, this.category, {super.key});

  final int flex;
  final ProductCategory category;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            color: CupertinoColors.lightBackgroundGray,
            borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
    );
  }
}

final class BigBlock extends Block {
  const BigBlock(ProductCategory category, {super.key}) : super(3, category);
}

final class MediumBlock extends Block {
  const MediumBlock(ProductCategory category, {super.key}) : super(2, category);
}

final class SmallBlock extends Block {
  const SmallBlock(ProductCategory category, {super.key}) : super(1, category);
}
