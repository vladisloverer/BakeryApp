import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

import 'package:app_bakery/constants/constants.dart';
import 'package:app_bakery/login/login_page/views/style_costans.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          passwordLabel,
          style: customLabelStyle,
        ),
        const SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: customBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: HexColor(whiteColor),
              fontFamily: 'Poppin',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: HexColor(whiteColor),
              ),
              hintText: passwordInputLabel,
              hintStyle: customHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
