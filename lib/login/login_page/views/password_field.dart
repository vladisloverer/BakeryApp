import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

import 'package:app_bakery/constants/constants.dart';
import 'package:app_bakery/login/login_page/views/style_costants.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool passVisible = false;

  @override
  void initState() {
    super.initState();
    passVisible = true;
  }

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
            obscureText: passVisible,
            style: TextStyle(
              color: HexColor(blackColor),
              fontFamily: 'Poppin',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: HexColor(whiteColor),
              ),
              suffixIcon: IconButton(
                icon:
                    Icon(passVisible ? Icons.visibility : Icons.visibility_off),
                onPressed: () => {
                  setState(() {
                    passVisible = !passVisible;
                  })
                },
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
