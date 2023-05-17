import 'package:flutter/material.dart';

import 'package:app_bakery/bakey_pages/croissant_page/croissant_page.dart';
import 'package:app_bakery/bakey_pages/donut_page/donut_page.dart';
import 'package:app_bakery/bakey_pages/pasticceria_page/pasticceria_page.dart';
import 'package:app_bakery/bakey_pages/salati_page/salati_page.dart';
import 'package:app_bakery/bakey_pages/torte_page/torte_page.dart';
import '../bakey_pages/special_page/specials_page.dart';

import 'package:app_bakery/constants/constants.dart';
import 'package:app_bakery/dashboard/view/card.dart';
import 'package:app_bakery/shared/custom_sliver_app_bar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(shrinkWrap: true, primary: false, slivers: [
      const CustomSliverAppBar(
        image: AssetImage('lib/assets/images/bakery_vendor.jpg'),
        text: bakeryVendorLabel,
      ),
      SliverList(
          delegate: SliverChildListDelegate([
        CardView(
            image: const AssetImage('lib/assets/images/special.jpg'),
            text: specialLabel,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SpecialPage()));
            }),
        CardView(
            image: const AssetImage('lib/assets/images/croissants.jpg'),
            text: croissantLabel,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CroissantPage()));
            }),
        CardView(
            image: const AssetImage('lib/assets/images/donuts.jpg'),
            text: donutsLabel,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DonutPage()));
            }),
        CardView(
            image: const AssetImage('lib/assets/images/torte.jpg'),
            text: torteLabel,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TortePage()));
            }),
        CardView(
            image: const AssetImage('lib/assets/images/pasticceria.jpg'),
            text: pasticceriaLabel,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PasticceriaPage()));
            }),
        CardView(
            image: const AssetImage('lib/assets/images/salato.jpg'),
            text: salatiLabel,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SalatiPage()));
            }),
      ]))
    ]));
  }
}
