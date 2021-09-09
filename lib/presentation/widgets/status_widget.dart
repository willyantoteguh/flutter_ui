import 'package:ORDO_UI/utils/pallete_test_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget statusWidget(String asset, String title, String subtitle) {
  return ListTile(
    leading: Padding(
      padding: const EdgeInsets.all(10.0),
      child: SvgPicture.asset(asset),
    ),
    title: Text(
     title,
      style: timelineText,
    ),
    subtitle: Text(
      subtitle,
      style: boldTextSub2,
    ),
  );
}
