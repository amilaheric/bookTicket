import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterappnew/utilis/app_layout.dart';
import 'package:flutterappnew/utilis/app_styles.dart';
import 'package:flutterappnew/wiidgets/icon_text_widget.dart';
import 'package:flutterappnew/wiidgets/text_widget.dart';
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
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(15)),
          Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(18),
                  vertical: AppLayout.getWidth(18)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
                color: Color(0xD91130CE),
              ),
              child: Center(
                child: Text(
                  "Find tickets",
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              )),
          Gap(AppLayout.getHeight(30)),
          const AppDoubleText(text: "Upcoming flights", text2: "View all"),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1)
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(195),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(".dart_tool/assets/sit.jpg")),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out this chance!",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(195),
                    decoration: BoxDecoration(
                        color: Color(0xFF3ABBBB),
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18))),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getHeight(15)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dicount \nfor survey",
                            style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text("Take the survey about our services",
                              style: Styles.textStyle.copyWith(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white))
                        ]),
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(195),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getHeight(15)),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18)),
                        color: Colors.amber),
                    child: Column(children: [
                      Text(
                        "Take love",
                        style:
                            Styles.headLineStyle2.copyWith(color: Colors.white),
                      ),
                      Gap(AppLayout.getHeight(5)),
                    ]),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
