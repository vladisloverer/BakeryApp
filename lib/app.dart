import 'package:app_bakery/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [],
        child: MultiBlocProvider(providers: [], child: const AppView()));
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        titleSpacing: -10,
        toolbarHeight: 40,
        backgroundColor: HexColor(primaryColor),
        titleTextStyle: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600, height: 1.13),);
  }
}
