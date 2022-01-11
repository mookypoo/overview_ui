import 'package:flutter/widgets.dart';

class GridContainer extends StatelessWidget {
  const GridContainer({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(96, 124, 141, 0.8),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(12, 12),
          ),
        ],
      ),
      child: child,
    );
  }
}
