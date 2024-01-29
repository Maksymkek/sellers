import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sellers/presentation/common_widgets/linear_blur_widget.dart';

class DockWidget extends StatelessWidget {
  const DockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        const LinearBlurWidget(
          size: Size(double.infinity, 150),
          verticalDirection: VerticalDirection.up,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 150,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.white.withOpacity(0),
                  Colors.grey.withOpacity(0.5),
                  Colors.black.withOpacity(0.6)
                ],
                    stops: const [
                  0.15,
                  0.65,
                  1
                ])),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Icon(
                CupertinoIcons.cart,
                color: Colors.black.withOpacity(0.9),
                size: 34,
              ),
              Icon(
                CupertinoIcons.star,
                color: Colors.black.withOpacity(0.9),
                size: 34,
              ),
              Icon(
                CupertinoIcons.add_circled,
                color: Colors.black.withOpacity(0.9),
                size: 34,
              ),
              Icon(
                CupertinoIcons.chat_bubble,
                color: Colors.black.withOpacity(0.9),
                size: 34,
              ),
            ],
          ),
        )
      ],
    );
  }
}
