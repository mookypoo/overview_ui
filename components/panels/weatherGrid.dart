import 'package:flutter/cupertino.dart';
import 'package:overview_ui/components/panels/gridContainer.dart';

class WeatherGrid extends StatelessWidget {
  const WeatherGrid({Key? key}) : super(key: key);

  Widget _cityName({required String cityName}) {
    return Container(
      child: Text(cityName, style: TextStyle(
        color: Color.fromRGBO(214, 213, 203, 1.0),
        fontSize: 18.0,
      )),
    );
  }

  Widget _temperature({required int temp}) {
    return Container(
      child: Text("$temp°", style: TextStyle(
        color: Color.fromRGBO(255,255, 255, 1.0),
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
      )),
    );
  }

  Widget _details({required String detail, required int highest, required int lowest}) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(detail, style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1.0),
            fontSize: 13.0,
          ),),
          Text("Highest: $highest  Lowest: $lowest", style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1.0),
            fontSize: 13.0,
          ),),
        ],
      ),
    );
  }

  Widget _topWidget(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        this._cityName(cityName: "Beijing"),
        this._temperature(temp: 12),
      ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GridContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 15.0, left: 15.0),
                child: this._topWidget(),
              ),
              Container(
                margin: EdgeInsets.only(left: 15.0, bottom: 10.0),
                child: this._details(
                  detail: "Sunny",
                  highest: 20,
                  lowest: 12,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: -5.5,
          top: 20,
          child: Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 4.0,
                  right: -5.0,
                  child: Icon(
                    CupertinoIcons.sun_max_fill,
                    size: 110.0,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                ),
                Icon(
                  CupertinoIcons.sun_max_fill,
                  size: 110.0,
                  color: Color.fromRGBO(255, 255, 0, 1.0),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
