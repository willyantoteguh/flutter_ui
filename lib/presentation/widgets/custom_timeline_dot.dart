import 'package:ORDO_UI/utils/pallete_test_one.dart';
import 'package:flutter/material.dart';

Widget customTimelineDot() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 35),
    child: Container(
      child: Column(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 4,
              width: 4,
              color: dot.withOpacity(0.25),
            )),
        SizedBox(height: 10),
        ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 5,
              width: 5,
              color: dot.withOpacity(0.5),
            )),
        SizedBox(height: 10),
        ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 6,
              width: 6,
              color: dot.withOpacity(0.75),
            )),
      ]),
    ),
  );
}
