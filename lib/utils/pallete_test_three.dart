import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double margin = 25;

Color orangeColor = Color(0xffFF9A00);
Color whiteColor = Color(0xffFFFFFF);
Color greyColor = Color(0xff545454);
Color gradient2 = Color(0xff53B2FC);
Color gradient1 = Color(0xff127CCE);

//! Title Screen
TextStyle boldBalanceText = GoogleFonts.poppins().copyWith(
    color: Color(0xff6D6D6D), fontSize: 13, fontWeight: FontWeight.w700);

TextStyle blackText = GoogleFonts.poppins().copyWith(color: Colors.black);

TextStyle greyText = GoogleFonts.poppins().copyWith(color: greyColor);

TextStyle whiteText = GoogleFonts.poppins().copyWith(color: whiteColor);

TextStyle idTransaksiText =
    GoogleFonts.poppins().copyWith(color: Color(0xff94AFB6));

TextStyle idText = GoogleFonts.poppins().copyWith(color: Color(0xff3D6670));

TextStyle rebateText = GoogleFonts.poppins().copyWith(color: Color(0xff41BE06));

TextStyle orangeText = GoogleFonts.poppins().copyWith(color: orangeColor);
