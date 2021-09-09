import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget mapWidget() {
  return Stack(
    children: [
      Positioned(
          top: 82,
          left: 4,
          right: 52,
          child: SvgPicture.asset(
            'assets/images/test1/tracking.svg',
            fit: BoxFit.contain,
          )),
      SvgPicture.asset(
        'assets/images/test1/map.svg',
        fit: BoxFit.cover,
      ),
    ],
  );
}
