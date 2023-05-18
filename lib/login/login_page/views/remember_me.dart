import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

import 'package:app_bakery/login/login_page/views/style_costants.dart';
import 'package:app_bakery/constants/constants.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.0,
      child: Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: HexColor(whiteColor)),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: HexColor(whiteColor),
              onChanged: (value) {
                setState(() {
                  _rememberMe = value!;
                });
              },
            ),
          ),
          Text(
            rememberMeLabel,
            style: customLabelStyle,
          ),
        ],
      ),
    );
  }
}
