import 'package:ORDO_UI/presentation/widgets/app_bar.dart';
import 'package:ORDO_UI/presentation/widgets/custom_line.dart';
import 'package:ORDO_UI/presentation/widgets/custom_timeline_dot.dart';
import 'package:ORDO_UI/presentation/widgets/draggable_widget.dart';
import 'package:ORDO_UI/presentation/widgets/map_widget.dart';
import 'package:ORDO_UI/presentation/widgets/profile_driver.dart';
import 'package:ORDO_UI/presentation/widgets/status_widget.dart';
import 'package:ORDO_UI/utils/pallete_test_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TestOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      child: SafeArea(
          child: Scaffold(
        appBar: appBar(
          asset: 'assets/icons/test1/shopping_bag.png',
          color: gradient1,
          title: 'LACAK PESANAN'
        ),
        body: SizedBox.expand(
          child: Stack(
            children: <Widget>[
             mapWidget(),
             draggableWidget(
              
             )
            ],
          ),
        ),
      )),
    );
  }
}
