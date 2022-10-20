import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterappnew/utilis/app_layout.dart';
import 'package:flutterappnew/utilis/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 300,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(
        right: 10,
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.blueGrey.shade200,
          blurRadius: 5,
          spreadRadius: 2,
        )
      ], color: Styles.primaryColor, borderRadius: BorderRadius.circular(12)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            height: 180,
            padding: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: DecorationImage(
                    image: AssetImage(".dart_tool/assets/one.png")))),
        Text(
          "Open space",
          style: Styles.headLineStyle2.copyWith(color: Colors.white),
        ),
        Text("London", style: Styles.headLineStyle3),
        Text(
          "40\$/night",
          style: Styles.headLineStyle2.copyWith(color: Colors.white),
        )
      ]),
    );
  }
}
