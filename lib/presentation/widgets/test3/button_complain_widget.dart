import 'package:ORDO_UI/utils/pallete_test_three.dart';
import 'package:flutter/material.dart';

Widget buttonComplainWidget(
    {BuildContext context, String buttonText, double width, Function onpress}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 45, left: 30),
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
        ],
        gradient: LinearGradient(
          begin:  Alignment.bottomRight,
          end: Alignment.topLeft,
          stops: [0.0, 1.0],
          
          colors: [
          
           gradient1,
           gradient2
          ],
        ),
      
        borderRadius: BorderRadius.circular(9),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          minimumSize: MaterialStateProperty.all(Size(width, 50)),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          // elevation: MaterialStateProperty.all(3),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.only(
            // top: 10,
            // bottom: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 90),
              Text(
                buttonText,
                style: whiteText.copyWith(fontWeight: FontWeight.w800)
              ),
              SizedBox(width: 90),
              Icon(Icons.arrow_forward, color: whiteColor)
            ],
          ),
        ),
      ),
    ),
  );
}
