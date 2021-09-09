import 'package:ORDO_UI/presentation/widgets/custom_line.dart';
import 'package:ORDO_UI/presentation/widgets/custom_timeline_dot.dart';
import 'package:ORDO_UI/presentation/widgets/item_order_widget.dart';
import 'package:ORDO_UI/presentation/widgets/profile_driver.dart';
import 'package:ORDO_UI/presentation/widgets/status_widget.dart';
import 'package:ORDO_UI/utils/pallete_test_one.dart';
import 'package:ORDO_UI/utils/shared_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget draggableWidget() {
  return Container(
      child: DraggableScrollableSheet(
    initialChildSize: 0.35,
    minChildSize: 0.15,
    maxChildSize: 0.9,
    builder: (BuildContext context, s) {
      return Container(
        padding: EdgeInsets.only(
          top: 10,
          left: 27,
          right: 19,
        ),
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: [BoxShadow(color: greyColor, blurRadius: 10)]),
        child: ListView(controller: s, children: <Widget>[
          customLine(),
          SizedBox(
            height: 45,
          ),
          profileDriver(),
          SizedBox(height: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              statusWidget('assets/icons/test1/clock.svg', 'Status',
                  'Sedang mengambil barang'),
              customTimelineDot(),
              statusWidget('assets/icons/test1/pin.svg', 'Alamat Anda',
                  'Taman Indah Dago No. 62'),
              Text('Pesanan',
                  style: blackText.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w600)),
              itemOrderWidget(),
              itemOrderWidget(),
              SizedBox(height: 36),
              Text('Catatan Pesanan',
                  style: blackText.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w600)),
              Text(
                description,
                style: greyText.copyWith(
                    fontSize: 11, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 50),
            ],
          ),
        ]),
      );
    },
  ));
}
