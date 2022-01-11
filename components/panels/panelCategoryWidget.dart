import 'package:flutter/cupertino.dart';

class PanelCategoryWidget extends StatelessWidget {
  const PanelCategoryWidget({
    Key? key,
    required this.context,
    required this.category,
    required this.width,
    required this.onTap,
    required this.color,
  }) : super(key: key);

  final BuildContext context;
  final String category;
  final double width;
  final Function() onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 10.0),
        width: width,
        height: MediaQuery.of(context).size.height > 844.0 ? 37.0 : 32.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: color,
        ),
        child: Center(
          child: Text(category,
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1.0),
              fontSize: MediaQuery.of(context).size.height > 844.0 ? 15.0 : 13.0,
            ),
          ),
        ),
      ),
    );
  }
}
