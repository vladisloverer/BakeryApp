import 'package:app_bakery/constants/constants.dart';
import 'package:app_bakery/shared/custom_sliver_app_bar.dart';
import 'package:flutter/material.dart';

class CroissantPage extends StatelessWidget{
  const CroissantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
      slivers: [
        CustomSliverAppBar(
          image: AssetImage('lib/assets/images/croissants.jpg'),
          text: croissantLabel,
        ),
      ],
    ));
  }

}