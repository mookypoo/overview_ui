import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'overview/overviewPage.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
      ? MaterialApp(
          theme: ThemeData(
            textTheme: GoogleFonts.montserratTextTheme(),
          ),
          onGenerateRoute: (RouteSettings route) {
            return MaterialPageRoute(
              builder: (BuildContext context) => OverviewPage(),
              settings: RouteSettings(name: OverviewPage.route),
            );
          },
        )
      : CupertinoApp(
          theme: CupertinoThemeData(
            textTheme: CupertinoTextThemeData(
                textStyle: GoogleFonts.montserrat(
                  color: CupertinoColors.black,
                  fontSize: 16.0,
                ),
            ),
          ),
          onGenerateRoute: (RouteSettings route) {
            return MaterialPageRoute(
              builder: (BuildContext context) => OverviewPage(),
              settings: RouteSettings(name: OverviewPage.route),
            );
          },
        );
  }
}
