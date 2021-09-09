import 'package:ORDO_UI/models/product.dart';
import 'package:ORDO_UI/utils/pallete_test_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget productCardWidget(BuildContext context, Product product) {
  return Container(
    height: 124,
    width: 124,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(product.imageAssets), fit: BoxFit.cover)),
    child: Stack(
      children: [
        Positioned(
            right: 7,
            top: 8,
            child: Container(
              // width: 48,
              // height: 23,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  gradient: LinearGradient(colors: [gradient1, gradient2])),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.star, size: 14, color: Color(0xffDFB300)),
                      Text(
                        product.rating,
                        style: whiteText.copyWith(
                            fontSize: 10, fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
            )),
        Positioned(
          bottom: 0,
          child: Column(
            children: [
              Container(
                height: 20,
                width: 124,
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Align(
                    alignment: Alignment.centerLeft,
                      child: Text(
                        product.name,
                        style: whiteText.copyWith(
                            fontSize: 10, fontWeight: FontWeight.w600),
                      ),
                    ),
                ),
                
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
