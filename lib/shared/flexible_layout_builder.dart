import 'package:flutter/material.dart';

class FlexibleLayoutBuilder extends StatelessWidget {
  final Widget child;
  const FlexibleLayoutBuilder({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Flexible(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
          child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),
        child: child,
      ));
    }));
  }
}
