import 'package:flutter/material.dart';

enum AppColors with ColorValues {
  red(Color(0xffEC1A1A), "Red"),
  green(Color(0xff29BB2F), "Green"),
  white(Colors.white, "White"),
  darkText(Color(0xff2C2B2B), "darkText"),
  medTextColor(Color(0xff484747), "medTextColor"),
  secondary(Color(0xffD9CBAD), "secondary"),
  low(Color(0xffD0D0D0), "low"),
  inActive(Color(0xFF9DB2CE), "inActive"),
  cta(Color(0XFFF5C27D), "cta"),
  lightActive(Color(0xFF5A5A5A), "lightActive"),
  secondaryTextColor(Color(0xFF363535), "secondaryTextColor"),
  bgColor(Color(0xFFF2F2F4), "bgColor"),
  fieldTextColor(Color(0xFF565656), "fieldTextColor"),
  buttonColor(Color(0xFFF5C27D), "buttonColor"),
  buttonColorlight(Color(0x69F5C27D), "buttonColorlight"),
  blueColor(Color(0xFF1DCDFE), "blueColor"),
  medicalSpaBg(Color(0xFFD57DF6), "medicalSpaBg"),
  beautySaloonBg(Color(0xFFFF7330), "beautySaloonBg"),
  primaryColor(Color(0XFFF5C27D), "primaryColor"),
  blackColor(Color(0XFF000000), "blackColor"),
  lightGreyColor(Color(0XFF6C6B6A), "lightGreyColor"),
  containerBgColor(Color(0XFFF5F5F5), "containerBgColor");

  final Color color;
  final String name;

  const AppColors(this.color, this.name);

  @override
  int redCode() => color.red;

  @override
  int greenCode() => color.green;

  @override
  int blueCode() => color.blue;

  @override
  String toString() {
    super.toString();
    return "Color name is: $name";
  }

  String hexCode() =>
      "#${color.value.toRadixString(16).substring(2, color.value.toRadixString(16).length)}";
}

mixin ColorValues {
  int redCode() => -1;

  int greenCode() => -1;

  int blueCode() => -1;
}
