

import 'package:flutter/material.dart';

import '../core/resources/manager_colors.dart';
import '../core/resources/manager_font_sizes.dart';
import '../core/resources/manager_height.dart';
import '../core/resources/manager_icons.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 130,
          width: 220,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                blurRadius: 20,
                color: ManagerColors.grey.withOpacity(.1),
                spreadRadius: 0,
                offset: const Offset(6, 4))
          ]),
          child: Card(
            elevation: 6,
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "here Text",
                    style: TextStyle(
                        fontSize: ManagerFontSizes.s16,
                        color: ManagerColors.grey),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text(r"$200"),
                      const Text(
                        "\$200",
                      ),

                      Icon(
                        ManagerIcons.Iconfav,
                        color: ManagerColors.red,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            right: 32,
            top: -50,
            child: Image.network(
              'https://m.media-amazon.com/images/I/61HOXaizGcL._AC_UY1000_.jpg',
              height: ManagerHeight.h100,
            ))
      ],
    );
  }
}
