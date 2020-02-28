import 'package:flutter/material.dart';

const kCardColour = Color(0xFF111328);

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class Constants {
  //AppBar related strings
  static String courseBar = "Courses";
  static String facultyBar = "Faculty";
  static String postGraduateBar = "Post Graduate";
  static String undergraduateBar = "Undergraduate";
  static String maCourseBar = "Master of Arts";
  static String mscCourseBar = "Master of Science";
  static String mtechCourseBar = "Master of Technology";
  static String baHonoursCourseBar = "Bachelor of Arts (Hons.)";
  static String bscCourseBar = "Bachelor of Science";
  static String enggCourseBar = "Engineering";
  static String lateralEntryBar = "Lateral Entry";

  //Colors for theme
  static Color lightPrimary = Color(0xfff2f3f7);
  static Color darkPrimary = Color(0xff121212);
  static Color lightAccent = Colors.blue;
  static Color darkAccent = Colors.blue;
  static Color lightBG = Color(0xfff2f3f7);
  static Color darkBG = Color(0xff191919);

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    cursorColor: darkAccent,
  );
}
