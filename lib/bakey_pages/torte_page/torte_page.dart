import 'package:flutter/material.dart';

import 'package:app_bakery/constants/constants.dart';
import 'package:app_bakery/shared/custom_sliver_app_bar.dart';

class TortePage extends StatelessWidget {
  const TortePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
      slivers: [
        CustomSliverAppBar(
          image: AssetImage('lib/assets/images/torte.jpg'),
          text: torteLabel,
        ),
      ],
    ));
  }
}
