import 'package:flutter/widgets.dart';

class GridTitle extends StatelessWidget {
  const GridTitle({Key? key, required this.gridTitle, required this.gridDescription}) : super(key: key);

  final String gridTitle;
  final String gridDescription;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Text(gridTitle, style: TextStyle(
            color: Color.fromRGBO(255,255, 255, 1.0),
            fontSize: 21.0,
            fontWeight: FontWeight.bold,
          ),),
        ),
        Container(
          child: Text(gridDescription, style: TextStyle(
            color: Color.fromRGBO(255,255, 255, 0.8),
            fontSize: 12.0,
          ),),
        )
      ],
    );
  }
}
