import 'package:flutter/material.dart';

// Colors
const primary = Color(0xFF7D77FF);
const secondary = Color(0xFFF98794);
const textDarkBlue = Color(0xFF002C6E);
const textDarkgray = Color(0xFF808080);
const textLightgray = Color(0xFFB3B3B3);

const gradientBg = LinearGradient(begin: Alignment.topLeft, colors: [
  Color.fromRGBO(255, 148, 130, 1),
  Color.fromRGBO(125, 119, 255, 1)
]);

class Style {
  final screenWidth;
  final screenHeight;

  get zHeadingStyle => _zHeadingStyle();
  get zSubHeadingStyle => _zSubHeadingStyle();
  get primaryText => _primaryText();
  get zWhiteText => _zWhiteText();
  get zWhiteTextBold => _zWhiteTextBold();

  Style({this.screenWidth, this.screenHeight});

  TextStyle _zHeadingStyle() {
    return TextStyle(
        fontSize: (screenWidth > 350) ? 18 : 14,
        color: Colors.white,
        fontWeight: FontWeight.normal);
  }

  TextStyle _zSubHeadingStyle() {
    return TextStyle(
        fontSize: (screenWidth > 350) ? 18 : 14,
        color: Colors.white,
        fontWeight: FontWeight.normal);
  }

  TextStyle _primaryText() {
    return TextStyle(
        fontSize: (screenWidth > 350) ? 18 : 14,
        color: primary,
        fontWeight: FontWeight.normal);
  }

  TextStyle _zWhiteText() {
    return TextStyle(
        fontSize: (screenWidth > 350) ? 18 : 14,
        color: Colors.white,
        fontWeight: FontWeight.normal);
  }

  TextStyle _zWhiteTextBold() {
    return TextStyle(
        fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold);
  }
}
