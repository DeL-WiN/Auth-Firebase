import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeColors {
  static const Color green = Color(0xff50A5A8);
  static const Color black = Color(0xff222027);
  static const Color red = Color(0xffDC2F3C);
  static const Color yellow = Color(0xffDCA361);
  static const Color white = Color(0xffffffff);
  static const Color gray = Color(0xffBEBEBE);
  static const Color transparent = Color(0x00000000);
}

abstract class BC {
  static Color get green => ThemeColors.green;


  static Color get yellow => ThemeColors.yellow;


  static Color get white => ThemeColors.white;

  static Color get gray => ThemeColors.gray;


  static Color get black => ThemeColors.black;


  static Color get transparent => ThemeColors.transparent;
}

abstract class BS {
  static TextStyle get bold24 => GoogleFonts.roboto(
        textStyle: TextStyle(
            color: BC.white,
            fontSize: 24,
            height: 1.28,
            letterSpacing: 0.09,
            fontWeight: FontWeight.w700),
      );

  static TextStyle get bold20 => GoogleFonts.roboto(
        textStyle: TextStyle(
            color: BC.white,
            fontSize: 20,
            height: 1.28,
            letterSpacing: 0.09,
            fontWeight: FontWeight.w700),
      );

  static TextStyle get bold16 => GoogleFonts.roboto(
        textStyle: TextStyle(
            color: BC.white.withOpacity(0.8),
            fontSize: 16,
            height: 1.28,
            letterSpacing: 0.09,
            fontWeight: FontWeight.w700),
      );

  static TextStyle get sb18 => GoogleFonts.roboto(
        textStyle: TextStyle(
            color: BC.white,
            fontSize: 18,
            height: 1.28,
            letterSpacing: 0.09,
            fontWeight: FontWeight.w600),
      );

  static TextStyle get med16 => GoogleFonts.roboto(
        textStyle: TextStyle(
            color: BC.white, fontSize: 16, fontWeight: FontWeight.w500),
      );


  static TextStyle get reg20 => GoogleFonts.roboto(
        textStyle: TextStyle(
            color: BC.white, fontSize: 20, fontWeight: FontWeight.w400),
      );

  static TextStyle get reg18 => GoogleFonts.roboto(
        textStyle: TextStyle(
            color: BC.white, fontSize: 18, fontWeight: FontWeight.w400),
      );

  static TextStyle get reg16 => GoogleFonts.roboto(
        textStyle: TextStyle(
            color: BC.white, fontSize: 16, fontWeight: FontWeight.w400),
      );
}

abstract class BDuration {
  static Duration get d500 => const Duration(milliseconds: 500);

  static Duration get d400 => const Duration(milliseconds: 400);

  static Duration get d200 => const Duration(milliseconds: 200);
}

abstract class BRadius {
  static BorderRadius get r100 => const BorderRadius.all(Radius.circular(100));

  static BorderRadius get r40 => const BorderRadius.all(Radius.circular(40));

  static BorderRadius get r20 => const BorderRadius.all(Radius.circular(20));

  static BorderRadius get r16 => const BorderRadius.all(Radius.circular(16));

  static BorderRadius get r10 => const BorderRadius.all(Radius.circular(10));

  static BorderRadius get r8 => const BorderRadius.all(Radius.circular(8));

  static BorderRadius get r4 => const BorderRadius.all(Radius.circular(4));

  static BorderRadius get r2 => const BorderRadius.all(Radius.circular(2));
}

