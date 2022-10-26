import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterappnew/utilis/app_layout.dart';
import 'package:flutterappnew/utilis/app_styles.dart';
import 'package:flutterappnew/wiidgets/thick_container.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 96, 162, 223),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(21)),
                    topRight: Radius.circular(AppLayout.getHeight(21)))),
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    ticket['from']['code'],
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                  Expanded(child: Container()),
                  const ThickContainer(),
                  Expanded(
                      child: Stack(
                    children: [
                      SizedBox(
                        height: AppLayout.getHeight(24),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  (constraints.constrainWidth() / 6).floor(),
                                  (index) => const SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.white)),
                                      )),
                            );
                          },
                        ),
                      ),
                      Center(
                        child: Transform.rotate(
                          angle: 1.5,
                          child: const Icon(
                            Icons.local_airport_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )),
                  const ThickContainer(),
                  Expanded(child: Container()),
                  Text(
                    ticket['to']['code'],
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    ticket['from']['name'],
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                  const Spacer(),
                  Text(
                    ticket['flying_time'],
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  ),
                  const Spacer(),
                  Text(
                    ticket['to']['name'],
                    style: Styles.headLineStyle3.copyWith(color: Colors.white),
                  )
                ],
              )
            ]),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 18, 66, 137),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                  bottomRight: Radius.circular(AppLayout.getHeight(21))),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticket['date'],
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const Gap(5),
                      Text(
                        "Date",
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        ticket['departure_time'],
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const Gap(5),
                      Text(
                        "Departure time",
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ticket['number'].toString(),
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const Gap(5),
                      Text(
                        "Number",
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              )
            ]),
          )
        ]),
      ),
    );
  }
}
