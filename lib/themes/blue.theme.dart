import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF499EEC);
const accentColor = const Color(0xFF83D2F6);

ThemeData blueTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: new TextTheme(
      body1: new TextStyle(
        fontFamily: "KarlaRegular",
        color: Colors.black.withOpacity(0.9),
      ),
      body2: TextStyle(
        fontFamily: "KarlaRegular",
      ),
      button: TextStyle(
        fontFamily: "KarlaRegular",
      ),
      caption: TextStyle(
        fontFamily: "KarlaRegular",
      ),
      display1: TextStyle(
        fontFamily: "KarlaRegular",
      ),
      display2: TextStyle(
        fontFamily: "KarlaRegular",
      ),
      display3: TextStyle(
        fontFamily: "KarlaRegular",
      ),
      display4: TextStyle(
        fontFamily: "KarlaRegular",
      ),
      headline: TextStyle(
        fontFamily: "KarlaRegular",
      ),
      overline: TextStyle(
        fontFamily: "KarlaRegular",
      ),
      subhead: TextStyle(
        fontFamily: "KarlaRegular",
      ),
      subtitle: TextStyle(
        fontFamily: "KarlaRegular",
      ),
      title: TextStyle(
        fontFamily: "KarlaRegular",
      ),
      // display4: new TextStyle(fontSize: 78),
      // button: new TextStyle(color: Colors.green),
      // headline: new TextStyle(color: Colors.deepPurple),
    ),
    primaryColor: primaryColor,
    accentColor: accentColor,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    backgroundColor: Color(0xFFFCFCFF),
    scaffoldBackgroundColor: Color(0xFFFCFCFF),
  );
}
