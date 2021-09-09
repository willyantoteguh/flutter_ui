import 'package:ORDO_UI/utils/pallete_test_three.dart';
import 'package:flutter/material.dart';

Widget balanceCardWidget({String status, String balance}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 22),
    child: Container(
      height: 103,
      width: double.infinity,
      padding: EdgeInsets.only(left: 31, top: 23, bottom: 5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: greyColor.withOpacity(0.5), blurRadius: 20)
        ],
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(status.toUpperCase(),
              style: orangeText.copyWith(
                  fontSize: 13, fontWeight: FontWeight.w700)),
          SizedBox(height: 5),
          Text(balance.toUpperCase(),
              style: boldBalanceText.copyWith(
                  fontSize: 22, fontWeight: FontWeight.w600)),
        ],
      ),
    ),
  );
}
