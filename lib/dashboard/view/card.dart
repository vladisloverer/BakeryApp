import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final AssetImage image;
  final String text;
  const CardView({super.key, required this.image, this.text = ''});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Ink.image(
            image: image,
            height: 200,
            fit: BoxFit.cover,
            child: InkWell(
              onTap: () {},
            ),
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
