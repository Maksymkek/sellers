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
        /*
        const LinearBlurWidget(
          size: Size(double.infinity, 150),
          verticalDirection: VerticalDirection.up,
        ),*/
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 150,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white.withOpacity(0), Colors.white],
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black.withOpacity(0.5), Colors.white])
                  .createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height));
            },
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  CupertinoIcons.cart_fill,
                  color: Colors.black,
                  size: 38,
                ),
                Icon(
                  CupertinoIcons.star_circle_fill,
                  color: Colors.black,
                  size: 38,
                ),
                Icon(
                  CupertinoIcons.add_circled_solid,
                  color: Colors.black,
                  size: 38,
                ),
                Icon(
                  CupertinoIcons.chat_bubble_2_fill,
                  color: Colors.black,
                  size: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
