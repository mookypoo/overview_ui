import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:overview_ui/components/panels/gridContainer.dart';
import 'package:overview_ui/components/panels/incomeGrid.dart';
import 'package:overview_ui/components/panels/panelCategoryWidget.dart';
import 'package:overview_ui/components/titleWidget.dart';
import 'package:overview_ui/components/todaysFeaturedWidget.dart';
import 'package:overview_ui/components/panels/weatherGrid.dart';
import 'package:overview_ui/data/panelData.dart';

class IosOverview extends StatefulWidget {
  IosOverview({Key? key}) : super(key: key);

  @override
  State<IosOverview> createState() => _IosOverviewState();
}

class _IosOverviewState extends State<IosOverview> {
  int _panelIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Container(
          color: Color.fromARGB(240, 29, 41, 81),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: TitleWidget(
                  context: context,
                  title: "Overview UI",
                  welcomeMsg: "Welcome back to your world",
                  imageUrl: "https://www.pngkey.com/png/detail/229-2290507_rick-and-morty-rick-face-png-banner-black.png"
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: TodaysFeaturedWidget(context: context),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: Text("Your Panel", style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1.0),
                  fontSize: MediaQuery.of(context).size.height > 844.0 ? 25.0 : 23.0,
                  fontWeight: FontWeight.bold,
                ),)
              ),
              Container(
                padding: EdgeInsets.only(left: 15.0, right: 10.0),
                margin: EdgeInsets.symmetric(vertical: 7.0),
                child: Row(
                  children: PanelData.panelCategories.map<Widget>((String category) {
                    int _categoryIndex = PanelData.panelCategories.indexOf(category);
                    return PanelCategoryWidget(
                      onTap: () {
                        this.setState(() {
                          this._panelIndex = _categoryIndex;
                        });
                      },
                      context: context,
                      category: category,
                      width: category == "Mood" || category == "Notes"
                        ? MediaQuery.of(context).size.width * 0.18
                        : MediaQuery.of(context).size.width * 0.23,
                      color: this._panelIndex == _categoryIndex ? Color.fromRGBO(51, 64, 189, 1.0) : Color.fromRGBO(0, 0, 51, 0.8)
                    );
                  }).toList(),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                height: MediaQuery.of(context).size.height * 0.46,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0.0,
                    mainAxisSpacing: 0.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.5,
                      child: index == 0 ? WeatherGrid()
                        : index == 1 ? IncomeGrid() : GridContainer(child: Center(child: Text("empty")),),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
