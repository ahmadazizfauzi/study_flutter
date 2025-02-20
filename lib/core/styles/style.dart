import 'package:flutter/material.dart';
import 'package:study_flutter/core/color/color.dart';

class TextStyles {
  // Menggunakan font Outfit
  static TextStyle title = TextStyle(
    fontFamily: 'Outfit',
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    color: AppColors.neutral['grey'],
  );

  static TextStyle body = TextStyle(
    fontFamily: 'Outfit',
    fontWeight: FontWeight.normal,
    fontSize: 16.0,
    color: AppColors.neutral['grey'],
  );

  // Menggunakan font Poppins
  static TextStyle poppinsRegular = TextStyle(
    fontFamily: 'poppins',
    color: AppColors.transparentColor,
  );

  static TextStyle poppinsMedium = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    fontSize: 16.0,
    color: AppColors.transparentColor,
  );

  static TextStyle poppinsSemiBold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    color: AppColors.transparentColor,
  );

  static TextStyle poppinsBold = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    color: AppColors.transparentColor,
  );

  static TextStyle poppinsBlack = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w900,
    color: AppColors.transparentColor,
  );
}
