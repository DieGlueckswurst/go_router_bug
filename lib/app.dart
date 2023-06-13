import 'package:flutter/material.dart';
import 'package:landing_page_boilerplate/constants/palette.dart';
import 'package:landing_page_boilerplate/routing/router.dart';
import 'package:landing_page_boilerplate/share_utils/color_service.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Landing Page',
      theme: ThemeData(
        primarySwatch: ColorService.createMaterialColor(
          Palette.white,
        ),
        scaffoldBackgroundColor: Palette.black,
      ),
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
