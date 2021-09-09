import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/pallete_test_three.dart';

Widget buttonWidget({Color color, String text, bool isTestThree}) {
  return ConstrainedBox(
    constraints: BoxConstraints.tightFor(width:   (isTestThree == false) ? 80 : 77, height: 26),
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                (isTestThree == false) ? 17 : 6), // <-- Radius
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: whiteText.copyWith(
                  fontSize: 9,
                  fontWeight: (isTestThree == false)
                      ? FontWeight.w600
                      : FontWeight.w500),
            ),
            // (!isTestThree == false) ? SizedBox(width: 5) : SizedBox(),
            (isTestThree == true)
                ? FaIcon(FontAwesomeIcons.filter, size: 10)
                : SizedBox()
          ],
        )),
  );
}
