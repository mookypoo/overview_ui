import 'package:flutter/widgets.dart';

import 'gridContainer.dart';
import 'gridTitle.dart';

class IncomeGrid extends StatelessWidget {
  const IncomeGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10.0, left: 15.0),
              child: GridTitle(
                gridTitle: "Income",
                gridDescription: "Five days of funding",
              ),
            ),
            Container(

            ),
          ],
        ),
      ),
    );
  }
}
