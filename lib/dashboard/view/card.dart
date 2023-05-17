import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

import 'package:app_bakery/constants/colors.dart';

class CardView extends StatelessWidget {
  final AssetImage image;
  final String text;
  final void Function()? onTap;
  const CardView({super.key, required this.image, this.text = '', this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      shadowColor: HexColor(secondaryColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: image,
            height: 150,
            fit: BoxFit.cover,
            child: InkWell(onTap: onTap ?? () {}),
          ),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
