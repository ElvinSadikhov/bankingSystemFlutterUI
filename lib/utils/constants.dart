import 'package:flutter/material.dart';

class AppConstants {
  AppConstants._();

  static final _AppColors _colors = _AppColors._();
  static final _AppThemes _themes = _AppThemes._();
  static final _AppPaddings _paddings = _AppPaddings._();

  static _AppColors get getColors => _colors;
  static _AppThemes get getThemes => _themes;
  static _AppPaddings get getPaddings => _paddings;
}

class _AppPaddings {
  _AppPaddings._();

  final double kDefaultPadding = 0; // to change
}

class _AppColors {
  _AppColors._();

  final white = Colors.white;

  final black = Colors.black;

  final amber = Colors.amber;

  final grey = Colors.grey;

  final blue = const Color.fromRGBO(125, 90, 230, 1);
}

class _AppThemes {
  _AppThemes._();

  final TextTheme firstScreen = TextTheme(
    // Your Cards
    headline1: TextStyle(
        fontFamily: "RadioCanada",
        color: AppConstants.getColors.white,
        fontWeight: FontWeight.w700,
        fontSize: 30),
    // You have 3 cards
    headline2: TextStyle(
        fontFamily: "RadioCanada",
        color: AppConstants.getColors.grey,
        fontWeight: FontWeight.w600,
        fontSize: 15),
    // card number
    headline3: TextStyle(
        fontFamily: "RadioCanada",
        color: AppConstants.getColors.white,
        fontWeight: FontWeight.w700,
        fontSize: 24),
    // name and date on card
    headline4: TextStyle(
        fontFamily: "RadioCanada",
        color: AppConstants.getColors.white,
        fontWeight: FontWeight.w700,
        fontSize: 16),
    // Expry date
    headline5: TextStyle(
        fontFamily: "RadioCanada",
        color: AppConstants.getColors.white,
        fontWeight: FontWeight.bold,
        fontSize: 12),
    // Mastercard
    headline6: TextStyle(
        fontFamily: "RadioCanada",
        color: AppConstants.getColors.white,
        fontWeight: FontWeight.w500,
        fontSize: 15),
  );

  final TextTheme secondScreen = TextTheme(
    // name
    headline1: TextStyle(
        fontFamily: "RadioCanada",
        color: AppConstants.getColors.grey,
        fontWeight: FontWeight.w600,
        fontSize: 30),
    // position
    headline2: TextStyle(
        fontFamily: "RadioCanada",
        color: AppConstants.getColors.white,
        fontWeight: FontWeight.w300,
        fontSize: 15),
    // choise option
    headline3: TextStyle(
        fontFamily: "RadioCanada",
        color: AppConstants.getColors.white,
        fontWeight: FontWeight.w300,
        fontSize: 19),
  );
}
