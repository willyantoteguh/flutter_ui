import 'package:ORDO_UI/presentation/widgets/test3/button_widget.dart';
import 'package:ORDO_UI/utils/pallete_test_three.dart';
import 'package:flutter/material.dart';

Widget itemRebateWidget() {
  return ListTile(
    leading: Container(
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
          padding: const EdgeInsets.all(6),
          child: Container(
            decoration: BoxDecoration(),
            padding: EdgeInsets.all(6),
            child: Image.asset(
              'assets/icons/test3/file.png',
              height: 15,
            ),
          )),
    ),
    title: Text('#REBATE12021',
        style: blackText.copyWith(
          fontSize: 13,
        )),
    subtitle: Text('20 Juli 2021', style: greyText.copyWith(fontSize: 10)),
    trailing: buttonWidget(
        color: orangeColor, isTestThree: false, text: 'Rp. 150.000'),
  );
}
