import 'package:app_bakery/constants/constants.dart';
import 'package:app_bakery/dashboard/view/card.dart';
import 'package:app_bakery/shared/flexible_layout_builder.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 120.5,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage('lib/assets/images/croissants.jpg'),
                    fit: BoxFit.cover)),
          ),
          const FlexibleLayoutBuilder(
            child: Column(
              children: [
                CardView(image: AssetImage('lib/assets/images/special.jpg'), text: specialLabel),
                CardView(image: AssetImage('lib/assets/images/croissants.jpg'), text: croissantLabel),
                CardView(image: AssetImage('lib/assets/images/donuts.jpg'), text: donutsLabel),
                CardView(image: AssetImage('lib/assets/images/torte.jpg'), text: torteLabel),
                CardView(image: AssetImage('lib/assets/images/pasticceria.jpg'), text: pasticceriaLabel),
                CardView(image: AssetImage('lib/assets/images/salato.jpg'), text: salatiLabel),
              ],
            ),
          )
        ],
      ),
    );
  }
}
