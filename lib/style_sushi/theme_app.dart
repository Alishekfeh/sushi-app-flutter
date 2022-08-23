import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class AppTheme {
  static const Color bgColor = Color(0XFFeaecf4);
  static const Color darkColor = Color(0XFF1e283c);
  static const Color mainColor = Color(0xFFFE4678);
  static const Color pink01 = Color(0xFFFEE3EA);
  static const Color pink02 = Color(0xFFFEEBF0);
  static const Color pink03 = Color(0xFFFEE0E8);
  static const Color gray02 = Color(0XFFE0E0E0);
  static const Color blackShadow = Color(0xFFDAD9DA);
  static const Color grayColor = Color(0XFFA3A3A3);
  static const Color black = Color(0XFF414141);
  static const Color white = Color(0xFFFFFFFF);
  static const Color ratingC = Color(0xFFFF972F);

  static const TextStyle txtHeading = TextStyle(
    fontSize: 30.0,

    color: mainColor,
    shadows: [
      BoxShadow(
        color: mainColor,
        blurRadius: 1,
        offset: Offset(0, 3),
      ),
    ],
    fontWeight: FontWeight.bold,
  );

  static const TextStyle txtBtnCategory = TextStyle(
    fontSize: 35.0,
    color: ratingC,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle txtItemCard = TextStyle(
    fontSize: 18.0,
    color: black,
    fontWeight: FontWeight.w600,
  );
  static const SizedBox sizeBox5 = SizedBox(
    height: 5,
  );
  static const SizedBox sizeBox10 = SizedBox(
    height: 10,
  );
  static const SizedBox sizeBox15 = SizedBox(
    height: 15,
  );
  static const SizedBox sizeBox20 = SizedBox(
    height: 20,
  );
}

class MyFlutterApp {
  MyFlutterApp._();

  static const _kFontFam = 'MyFlutterApp';

  //static const String _kFontPkg =;

  static const IconData sort_up = IconData(
    0xe800,
    fontFamily: _kFontFam,
  );
  static const IconData prawn = IconData(
    0xe801,
    fontFamily: _kFontFam,

  );
  static const IconData purchase_order = IconData(
    0xe802,
    fontFamily: _kFontFam,
  );
  static const IconData rice = IconData(
    0xe803,
    fontFamily: _kFontFam,
  );
  static const IconData salmon = IconData(
    0xe804,
    fontFamily: _kFontFam,
  );
  static const IconData tentacles = IconData(
    0xe806,
    fontFamily: _kFontFam,
  );
  static const IconData caviar = IconData(
    0xe807,
    fontFamily: _kFontFam,
  );
}
