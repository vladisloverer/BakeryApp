import 'package:app_bakery/constants/constants.dart';
import 'package:flutter/material.dart';

import 'package:app_bakery/login/login_page/views/style_costants.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print('Forgot Password Button Pressed'),
        child: Text(
          forgotPassLabel,
          style: customLabelStyle,
        ),
      ),
    );
  }
}
