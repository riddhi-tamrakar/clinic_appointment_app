import 'package:flutter/material.dart';

class AppTheme {
  //
  AppTheme._();

  static const Color kPrimaryColor = Color(0xff147482);
  static const Color kBackgroundColor = Color(0xffEFEFEF);
  static const Color kOnPrimaryColor = Colors.white;
  static const Color kSecondaryColor = Color(0xff535353);
  static const Color kFontColor1 = Colors.black;
  static const Color kFontColor2 = Colors.white;
  static const Color kCardColor = Colors.white;
  static const Color kShadowColor = Color(0xff000000);
  static Color kListTileColor = Color(0xffD8D8D8).withOpacity(0.12);
  static Color kIconColor = Color(0xff535353).withOpacity(0.75);
  static Color kShimmerBaseColor = Colors.grey[400];
  static Color kShimmerHighlightColor = Colors.grey[100];

  //Font-sizes
  static const double kButtonFontSize = 18.0;
  static const double kSubtitleFontSize = 16.0;
  static const double kTitleFontSize = 28.0;
  static const double kCaptionFontSize = 16.0;
  static const double kHeaderFontSize = 22.0;

  //Borders
  static const double kBorderRadius = 6.0;
  static const double kBorderWidth = 1.0;
  static const double kBottomSheetModalUpperRadius = 25.0;

  //Paddings
  static const double kBodyPadding = 16.0;
  static const double kAppBarHeight = 120.0;

  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'Poppins',
    primaryColor: kPrimaryColor,
    errorColor: Colors.red,
    scaffoldBackgroundColor: kBackgroundColor,
    backgroundColor: kBackgroundColor,
    colorScheme: ColorScheme.light(
      primary: kPrimaryColor,
      onPrimary: kOnPrimaryColor,
      // primaryVariant: Colors.white38,
      secondary: kSecondaryColor,
    ),
    cardTheme: CardTheme(color: kCardColor),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: kPrimaryColor, foregroundColor: kOnPrimaryColor),
    iconTheme: IconThemeData(
      color: kIconColor,
    ),
    textTheme: TextTheme(
        headline6: TextStyle(
            fontSize: kTitleFontSize,
            color: kPrimaryColor,
            fontFamily: 'Poppins-SemiBold'),
        headline5: TextStyle(
            fontSize: kHeaderFontSize,
            color: kFontColor1,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins-SemiBold'),
        caption: TextStyle(
            fontSize: kCaptionFontSize,
            color: kFontColor1,
            fontWeight: FontWeight.w500),
        subtitle1:
            TextStyle(fontSize: kSubtitleFontSize, color: kSecondaryColor)),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: kCardColor,
      filled: true,
      hintStyle: TextStyle(color: kSecondaryColor, fontSize: kSubtitleFontSize),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: kBorderWidth, color: kPrimaryColor),
          borderRadius: BorderRadius.circular(kBorderRadius)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: kBorderWidth, color: kBackgroundColor),
          borderRadius: BorderRadius.circular(kBorderRadius)),
    ),
  );
}
