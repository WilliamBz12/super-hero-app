import 'package:flutter/material.dart';
import 'colors.dart';

// ignore: avoid_classes_with_only_static_members
class AppTheme {
  static final ThemeData light = ThemeData(
    primaryColor: AppColors.primary,
    accentColor: AppColors.secondary,
    errorColor: AppColors.danger,
    fontFamily: 'OpenSans',
    backgroundColor: Color(0xFFE5E5E5),
    cardColor: Colors.white,
    hoverColor: AppColors.gray70,
    shadowColor: AppColors.gray20,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      color: AppColors.primary,
      elevation: 1,
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );
}
