import 'package:ORDO_UI/utils/pallete_test_two.dart';
import 'package:ORDO_UI/utils/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget profileWidget(BuildContext context) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(color: whiteColor),
    child: Padding(
      padding: EdgeInsets.only(left: 18.5, right: 18.5, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(4.5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(65),
                    color: whiteColor,
                    border: Border.all(color: greyColor, width: 1)),
                child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(
                      'assets/images/test2/profile.png',
                    )),
              ),
              Row(
                children: [
                  Column(children: [
                    Text('5.0', style: boldText2),
                    Text(
                      'Rating',
                      style: defaultText2.copyWith(letterSpacing: -0.1),
                    )
                  ]),
                  SizedBox(width: 30),
                  Column(children: [
                    Text(
                      '100',
                      style: boldText2,
                    ),
                    Text('Review',
                        style: defaultText2.copyWith(letterSpacing: -0.1))
                  ]),
                  SizedBox(width: 30),
                  Column(children: [
                    Text(
                      '162',
                      style: boldText2,
                    ),
                    Text('Pesanan',
                        style: defaultText2.copyWith(letterSpacing: -0.1))
                  ])
                ],
              )
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            'Dina Florist',
            style: boldText1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3, bottom: 12),
            child: Text(
              'Toko Bunga terbaik se Indonesia Raya\nHarga Murah Produk Berkualitas',
              style: defaultText1,
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: double.infinity),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'PORTOFOLIO',
                style: boldText1,
              ),
              style: ElevatedButton.styleFrom(
                primary: whiteColor,
                side: BorderSide(
                  color: greyColor,
                  width: 1
                )
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
