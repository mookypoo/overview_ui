import 'dart:io';

import 'package:flutter/widgets.dart';

import 'androidOverview.dart';
import 'iosOverview.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);
  static const String route = "/";

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
      ? AndroidOverview()
      : IosOverview();
  }
}
