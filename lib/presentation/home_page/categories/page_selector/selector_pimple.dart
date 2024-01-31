import 'package:flutter/cupertino.dart';

class SelectorPimpleWidget extends StatelessWidget {
  const SelectorPimpleWidget({super.key, required this.isSelected});
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: ClipOval(
        child: ColoredBox(
          color:
              isSelected ? CupertinoColors.systemGrey : CupertinoColors.white,
          child: const SizedBox(
            width: 10,
            height: 10,
          ),
        ),
      ),
    );
  }
}
