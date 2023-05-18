import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

import 'package:app_bakery/constants/constants.dart';
import 'package:app_bakery/login/login_page/views/style_costans.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          emailLabel,
          style: customLabelStyle,
        ),
        const SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: customBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: HexColor(blackColor),
              fontFamily: 'Poppin',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: HexColor(whiteColor),
              ),
              hintText: emailInputLabel,
              hintStyle: customHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
