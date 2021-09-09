import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double margin = 25;

Color mainColor = Color(0xff061737);
Color whiteColor = Color(0xffFFFFFF);
Color greyColor = Color(0xff545454);
Color gradient2 = Color(0xff3AB648);
Color gradient1 = Color(0xff526430);
Color dot = Color(0xff898EBC);

//! Title Screen
TextStyle boldText = GoogleFonts.poppins()
    .copyWith(color: greyColor, fontSize: 13, fontWeight: FontWeight.w700);

//! Username
TextStyle boldText1 = GoogleFonts.openSans()
    .copyWith(color: mainColor, fontSize: 17, fontWeight: FontWeight.w600);

//! Subtitle Plat Nomor
TextStyle boldText2 = GoogleFonts.openSans()
    .copyWith(color: gradient2, fontSize: 16, fontWeight: FontWeight.w600);

//! Title Timeline
TextStyle timelineText = GoogleFonts.poppins().copyWith(
    color: Color(0xff47623f), fontSize: 14, fontWeight: FontWeight.w400);

//! Subtitle Timeline
TextStyle boldTextSub2 = GoogleFonts.openSans()
    .copyWith(color: mainColor, fontSize: 15, fontWeight: FontWeight.w600);

TextStyle priceText = GoogleFonts.poppins().copyWith(
    color: Color(0xff47623f), fontSize: 13, fontWeight: FontWeight.w600);

//! Berat
TextStyle weightText = GoogleFonts.poppins().copyWith(
    color: Color(0xff979696), fontSize: 11, fontWeight: FontWeight.w400);

TextStyle blackText = GoogleFonts.poppins().copyWith(color: Colors.black);

TextStyle greyText = GoogleFonts.poppins().copyWith(color: Color(0xff8A7F7F));

TextStyle blackTextOther = GoogleFonts.inter().copyWith(color: Colors.black);
