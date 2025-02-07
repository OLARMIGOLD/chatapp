import 'package:chatapp/core/theme/custom_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomTheme {
  static ThemeData dark() {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Color(0xff1e1e1e),
      primaryColor: Color(0xFF5EBAAE),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF5EBAAE),
          minimumSize: Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.all(10),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF5EBAAE), width: 2),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF5EBAAE), width: 2),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF5EBAAE), width: 2),
          ),
          hintStyle: CustomTextstyle.caption),
    );
  }

  static ThemeData light() {
    return ThemeData.light().copyWith(
      scaffoldBackgroundColor: Color(0xffffffff),
      primaryColor: Color(0xFF5EBAAE),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF5EBAAE),
          minimumSize: Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.all(10),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF5EBAAE), width: 2),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF5EBAAE), width: 2),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF5EBAAE), width: 2),
          ),
          hintStyle: CustomTextstyle.caption),
    );
  }
}
