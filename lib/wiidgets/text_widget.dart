import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utilis/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  final String text;
  final String text2;
  const AppDoubleText({Key? key, required this.text, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            print('tapped');
          },
          child: Text(
            text,
            style: Styles.headLineStyle,
          ),
        ),
        Text(
          text,
          style: Styles.headLineStyle4,
        )
      ],
    );
  }
}
