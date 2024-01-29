import 'dart:ui';

import 'package:flutter/cupertino.dart';

class LinearBlurWidget extends StatelessWidget {
  const LinearBlurWidget(
      {super.key,
      this.sigmaX = 40,
      this.sigmaY = 40,
      required this.size,
      this.verticalDirection = VerticalDirection.down});

  final double sigmaX;
  final double sigmaY;
  final Size size;
  final VerticalDirection verticalDirection;

  @override
  Widget build(BuildContext context) {
    return buildGradient();
  }

  Widget buildGradient() {
    List<Widget> grad = [];
    for (int i = 0; i <= size.height; i += 1) {
      grad.add(ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: lerpDouble(0, sigmaX,
                      Curves.easeInOutCirc.transform(i / size.height)) ??
                  0,
              sigmaY: lerpDouble(0, sigmaY,
                      Curves.easeInOutCirc.transform(i / size.height)) ??
                  0),
          child: const SizedBox(height: 1, width: double.infinity),
        ),
      ));
    }
    if (verticalDirection == VerticalDirection.down) {
      grad = grad.reversed.toList();
    }
    Column gradient = Column(
      mainAxisSize: MainAxisSize.min,
      children: grad,
    );
    return gradient;
  }
}
