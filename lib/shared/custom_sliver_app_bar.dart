import 'package:app_bakery/login/login_page/login_page.dart';
import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

import 'package:app_bakery/constants/constants.dart';

class CustomSliverAppBar extends StatelessWidget {
  final String text;
  final AssetImage image;
  const CustomSliverAppBar(
      {super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: HexColor(whiteColor),
          fontSize: 24,
        ),
      ),
      pinned: true,
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: Icon(
                Icons.account_circle,
                color: HexColor(blackColor),
                size: 40,
              ),
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()))
              },
            ))
      ],
      backgroundColor: HexColor(pinkColor),
      expandedHeight: 150,
      flexibleSpace: FlexibleSpaceBar(
          background: DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [HexColor(pinkColor), Colors.transparent])),
              child: Image(
                image: image,
                fit: BoxFit.cover,
              ))),
    );
  }
}
