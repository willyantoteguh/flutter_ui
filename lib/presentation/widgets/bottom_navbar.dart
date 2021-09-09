import 'package:ORDO_UI/utils/pallete_test_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget bottomNavbar({int selectedIndex, Function(int index) onTap}) {
  return Container(
    height: 45,
    width: double.infinity,
    color: whiteColor,
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      InkWell(
          onTap: () {
            if (onTap != null) {
              onTap(0);
            }
          },
          child: Container(
            width: 22,
            height: 17,
            child: SvgPicture.asset('assets/icons/0.svg'),
          )),
      InkWell(
          onTap: () {
            if (onTap != null) {
              onTap(1);
            }
          },
          child: Container(
            width: 22,
            height: 17,
            child: SvgPicture.asset('assets/icons/1.svg'),
          )),
      InkWell(
          onTap: () {
            if (onTap != null) {
              onTap(2);
            }
          },
          child: Container(
            width: 22,
            height: 17,
            child: SvgPicture.asset('assets/icons/2.svg'),
          )),
      InkWell(
          onTap: () {
            if (onTap != null) {
              onTap(3);
            }
          },
          child: Container(
            width: 22,
            height: 17,
            child: SvgPicture.asset('assets/icons/3.svg'),
          )),
      InkWell(
          onTap: () {
            if (onTap != null) {
              onTap(4);
            }
          },
          child: Container(
            width: 22,
            height: 17,
            child: SvgPicture.asset('assets/icons/4.svg'),
          )),
    ]),
  );
}
