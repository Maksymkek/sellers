import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sellers/presentation/common_widgets/linear_blur_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const LinearBlurWidget(
          size: Size(double.infinity, 130),
        ),
        ClipRect(
          child: Container(
            width: double.infinity,
            height: 140,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.white.withOpacity(0)],
            )),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.black
                        ]).createShader(
                        Rect.fromLTWH(0, 0, bounds.width, bounds.height));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Expanded(
                          child: Text(
                        'Sellers',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 44,
                            color: Colors.black),
                      )),
                      const Icon(
                        CupertinoIcons.person_crop_circle,
                        size: 30,
                        color: CupertinoColors.black,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
