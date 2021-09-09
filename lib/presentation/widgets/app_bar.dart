import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/pallete_test_one.dart';

Widget appBar({Color color, String title, String asset, bool isTestThree}) {
  return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(29, 18, 15, 0),
          child: FaIcon(
            FontAwesomeIcons.arrowCircleLeft,
            color: color,
            size: 20,
          ),
        ),
        centerTitle: false,
        title: Text(
          title,
          style: boldText,
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              asset,
              height: 18,
            ),
            // icon: FaDuotoneIcon(),
            onPressed: () {},
          ),
          (isTestThree == true)
              ? IconButton(
                  icon: Image.asset(
                    'assets/icons/test3/bell.png',
                    height: 18,
                  ),
                  // icon: FaDuotoneIcon(),
                  onPressed: () {},
                )
              : SizedBox()
        ],
      ));
}
