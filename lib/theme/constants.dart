import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Colors
const bgColor = Colors.white;
const primaryColor = Color(0xffFF6666);
const fridgeBadgeColor = Color(0xffFFC2C2);
const freezerBadgeColor = Color(0xffDAD1FF);
const drysBadgeColor = Color(0xffFFEDD1);
const addButtonColor = Color(0xffE4FFE3);
const addColor = Color(0xff00FF29);

//Texts
class Constant {
  static TextStyle introHeader = GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 30, fontWeight: FontWeight.w900, color: Colors.black));
  static TextStyle introSecHeader = GoogleFonts.manrope(
      textStyle: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black));
  static TextStyle introButtonText = GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white));
  static TextStyle mainHeader = GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w900, color: Colors.black));
  static TextStyle mainWelcome = GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w900, color: Colors.black));
  static TextStyle header = GoogleFonts.manrope(
      textStyle: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black));
  static TextStyle addText = GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xff00FF29)));
  static TextStyle itemHeader = GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black));
  static TextStyle itemQuantity = GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black));
  static TextStyle itemTimeNormal = GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: Colors.black.withOpacity(.5)));
  static TextStyle itemTimeRed = GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 10, fontWeight: FontWeight.bold, color: Colors.red));
  static TextStyle itemTimeYellow = GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 10, fontWeight: FontWeight.bold, color: Color(0xffFFE600)));
  static TextStyle fridgeBadgeText = GoogleFonts.manrope(
      textStyle: TextStyle(
          fontSize: 10, fontWeight: FontWeight.w500, color: Colors.red));
  static TextStyle freezerBadgeText = GoogleFonts.manrope(
      textStyle: TextStyle(
          fontSize: 10, fontWeight: FontWeight.w500, color: Color(0xff0047FF)));
  static TextStyle drysBadgeText = GoogleFonts.manrope(
      textStyle: TextStyle(
          fontSize: 10, fontWeight: FontWeight.w500, color: Color(0xffFF9B00)));
  static TextStyle tabText = GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black));
}
