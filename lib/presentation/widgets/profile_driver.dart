import 'package:ORDO_UI/utils/pallete_test_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

Widget profileDriver() {
  return Row(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(65),
          boxShadow: [
            BoxShadow(color: gradient1.withOpacity(0.5), blurRadius: 20)
          ],
        ),
        child: CircularPercentIndicator(
            radius: 65,
            lineWidth: 4.0,
            percent: 60.0 / 90.0,
            startAngle: 168.0,
            backgroundColor: Colors.transparent,
            circularStrokeCap: CircularStrokeCap.round,
            linearGradient: LinearGradient(colors: [gradient1, gradient2]),
            center: Container(
                margin: EdgeInsets.all(11),
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    'assets/images/test2/profile.png',
                  ),
                )))),
      ),
      SizedBox(
        width: 6,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'David Morel',
            style: boldText1,
          ),
          Text(
            'B 1201 FA',
            style: boldText2,
          )
        ],
      ),
      SizedBox(
        width: 103,
      ),
      Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: gradient1.withOpacity(0.5), blurRadius: 20)
          ],
          borderRadius: BorderRadius.circular(54),
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [gradient1, gradient2]),
        ),
        child: Padding(
            padding: const EdgeInsets.all(11),
            child: Container(
              height: 33,
              width: 30,
              decoration: BoxDecoration(),
              padding: EdgeInsets.all(6),
              child: SvgPicture.asset(
                'assets/icons/test1/chat.svg',
              ),
            )),
      )
    ],
  );
}
