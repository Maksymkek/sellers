import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: const BoxDecoration(
          color: CupertinoColors.lightBackgroundGray,
          borderRadius: BorderRadius.all(Radius.circular(12.0))),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(12.0)),
                  child: Image.network(
                    'https://images.macrumors.com/t/ViLlZSetbuPtGlfLNaUL9yNjOak=/2500x0/filters:no_upscale()/article-new/2023/09/iPhone-15-General-Feature-Black.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    alignment: AlignmentDirectional.topStart,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Icon(
                          CupertinoIcons.star,
                          color: Colors.transparent,
                          shadows: [
                            Shadow(
                                color: CupertinoColors.white.withOpacity(1),
                                blurRadius: 7)
                          ],
                        ),
                        ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return const LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.blue,
                                      Colors.lightBlueAccent,
                                      Colors.blue
                                    ],
                                    transform: GradientRotation(pi / 4))
                                .createShader(Rect.fromLTWH(
                                    0, 0, bounds.width, bounds.height));
                          },
                          child: const Icon(
                            CupertinoIcons.star,
                            color: CupertinoColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          'iPhone 15 in perfect state like new, now is promotion',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: CupertinoColors.darkBackgroundGray,
                              height: 1.2),
                        ))
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Expanded(
                            child: Text(
                          '\$300',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: CupertinoColors.darkBackgroundGray),
                        )),
                        Icon(
                          CupertinoIcons.person_solid,
                          color: CupertinoColors.darkBackgroundGray,
                          size: 14,
                        ),
                        Text(
                          '9.5',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: CupertinoColors.darkBackgroundGray),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
