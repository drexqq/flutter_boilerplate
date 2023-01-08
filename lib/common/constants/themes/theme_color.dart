import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xffdb76ff);
  static const Color white = Color(0xffffffff);
  static const Color darkGray = Color(0xFFD3D3D3);
  static const Color gray = Color(0xffcccccc);
  static const Color lightGray = Color(0xffcccccc);
  static const Color darkBlack = Color(0xff333333);
  static const Color black = Color(0xff101010);

  static const LinearGradient primaryGradient = LinearGradient(
    begin: AlignmentDirectional.topStart,
    end: AlignmentDirectional.bottomEnd,
    colors: [
      Color(0xffdb76ff),
      Color(0xffbc00ff),
    ],
  );
}
