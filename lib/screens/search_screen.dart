import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterappnew/utilis/app_layout.dart';
import 'package:flutterappnew/utilis/app_styles.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(
            AppLayout.getHeight(40),
          ),
          Text(
            'What are\nyou looking for?',
            style: Styles.headLineStyle.copyWith(fontSize: 35),
          ),
          Gap(
            AppLayout.getHeight(40),
          ),
          Container(
            width: size.width * 54,
            child: Row(children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(50)),
                    color: Colors.white),
                child: Text('Airline tickets'),
              ),
            ]),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                color: const Color(0xFFF4F6F0)),
          )
        ],
      ),
    );
  }
}
