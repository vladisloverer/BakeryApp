import 'package:app_bakery/login/login_page/views/forgot_password_button.dart';
import 'package:app_bakery/login/login_page/views/login_button.dart';
import 'package:app_bakery/login/login_page/views/register_button.dart';
import 'package:app_bakery/login/login_page/views/remember_me.dart';
import 'package:flutter/material.dart';

import 'package:app_bakery/constants/constants.dart';
import 'package:app_bakery/login/login_page/views/email_field.dart';
import 'package:app_bakery/login/login_page/views/password_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 219, 184, 230),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 219, 184, 230),
                      Color.fromARGB(255, 224, 204, 228),
                      Color.fromARGB(255, 220, 201, 223),
                      Color.fromARGB(255, 174, 106, 167),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.4, 0.7, 0.9])),
          ),
          const SizedBox(
              height: double.infinity,
              child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          accediLabel,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppin',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        EmailField(),
                        SizedBox(
                          height: 30,
                        ),
                        PasswordField(),
                        ForgotPasswordButton(),
                        RememberMe(),
                        LoginButton(),
                        RegisterButton()
                      ]))),
        ],
      ),
    );
  }
}
