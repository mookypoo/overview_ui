import 'package:flutter/cupertino.dart';

class TodaysFeaturedWidget extends StatelessWidget {
  const TodaysFeaturedWidget({Key? key, required this.context}) : super(key: key);
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0),
      height: MediaQuery.of(context).size.height * 0.19,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromRGBO(51, 64, 189, 1.0),
      ),
    );
  }
}
