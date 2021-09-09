import 'package:flutter/material.dart';

import '../../../utils/pallete_test_three.dart';
import 'button_widget.dart';

Widget headerTableWidget() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        width: 31,
      ),
      Text(
        'Daftar Rebate',
        style: greyText.copyWith(
            color: Color(0xff94AFB6),
            fontSize: 11,
            fontWeight: FontWeight.w400),
      ),
      SizedBox(
        width: 40,
      ),
      buttonWidget(color: orangeColor, text: 'Semua', isTestThree: false),
      SizedBox(
        width: 8,
      ),
      buttonWidget(color: gradient2, text: 'Filter', isTestThree: true),
    ],
  );
}
