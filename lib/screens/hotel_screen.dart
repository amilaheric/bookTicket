import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterappnew/utilis/app_layout.dart';
import 'package:flutterappnew/utilis/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Hotel price is ${hotel['price']}');
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(
        right: 10,
      ),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.shade200,
              blurRadius: 5,
              spreadRadius: 2,
            )
          ],
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(12))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            height: AppLayout.getHeight(180),
            padding: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                color: Styles.primaryColor,
                image: DecorationImage(
                    image: AssetImage(".dart_tool/assets/${hotel['image']}")))),
        Text(
          hotel['place'],
          style: Styles.headLineStyle2.copyWith(color: Colors.white),
        ),
        Text(hotel['destination'], style: Styles.headLineStyle3),
        Text(
          '\$${hotel['price']}/night',
          style: Styles.headLineStyle2.copyWith(color: Colors.white),
        )
      ]),
    );
  }
}
