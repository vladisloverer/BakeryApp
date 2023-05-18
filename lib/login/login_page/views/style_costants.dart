import 'package:app_bakery/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final customHintTextStyle = TextStyle(
  color: HexColor(whiteColor),
  fontFamily: 'Poppin',
);

final customLabelStyle = TextStyle(
  color: HexColor(whiteColor),
  fontWeight: FontWeight.bold,
  fontFamily: 'Poppin',
);

final customBoxDecorationStyle = BoxDecoration(
  color: HexColor(pinkColor),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: HexColor(blackColor),
      blurRadius: 6.0,
      offset: const Offset(0, 2),
    ),
  ],
);
