import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

import 'package:app_bakery/constants/constants.dart';
import 'package:app_bakery/dashboard/view/card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(shrinkWrap: true, primary: false, slivers: [
      SliverAppBar(
        title: Text(
          bakeryVendorLabel,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: HexColor(brownColor),
            fontSize: 24,
          ),
        ),
        pinned: true,
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
                child: const Image(
                  image: AssetImage('lib/assets/images/bakery_vendor.jpg'),
                  fit: BoxFit.cover,
                ))),
      ),
      SliverList(
          delegate: SliverChildListDelegate([
        const CardView(
            image: AssetImage('lib/assets/images/special.jpg'),
            text: specialLabel),
        const CardView(
            image: AssetImage('lib/assets/images/croissants.jpg'),
            text: croissantLabel),
        const CardView(
            image: AssetImage('lib/assets/images/donuts.jpg'),
            text: donutsLabel),
        const CardView(
            image: AssetImage('lib/assets/images/torte.jpg'), text: torteLabel),
        const CardView(
            image: AssetImage('lib/assets/images/pasticceria.jpg'),
            text: pasticceriaLabel),
        const CardView(
            image: AssetImage('lib/assets/images/salato.jpg'),
            text: salatiLabel),
      ]))
    ]));
  }
}
