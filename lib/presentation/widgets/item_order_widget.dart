import 'package:ORDO_UI/utils/pallete_test_one.dart';
import 'package:ORDO_UI/utils/shared_value.dart';
import 'package:flutter/material.dart';

Widget itemOrderWidget() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        ListTile(
          leading: Container(
            height: 78,
            width: 58,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(80),
              boxShadow: [
                BoxShadow(color: greyColor.withOpacity(0.5), blurRadius: 20)
              ],
            ),
            child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/test1/strw.png')))),
          ),
          title: Text('Strawberry',
              style: blackText.copyWith(
                  fontSize: 15, fontWeight: FontWeight.w600)),
          subtitle: RichText(
              text: TextSpan(
                  text: '100 Gram\n',
                  style: weightText,
                  children: [TextSpan(text: 'Rp. 75.000', style: priceText)])),
          trailing: Text('\n\n2 Item',
              style: blackTextOther.copyWith(
                  fontSize: 12, fontWeight: FontWeight.w700)),
          isThreeLine: true,
        ),
        Text(
          'Catatan Item',
          style: blackText.copyWith(fontSize: 11, fontWeight: FontWeight.w600),
        ),
        Text(description,
            style: greyText.copyWith(fontSize: 11, fontWeight: FontWeight.w400))
      ],
    ),
  );
}
