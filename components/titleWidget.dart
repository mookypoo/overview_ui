import 'package:flutter/cupertino.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    // todo context 필요없음
    required this.context,
    required this.title,
    required this.welcomeMsg,
    required this.imageUrl
  }) : super(key: key);

  final BuildContext context;
  final String title;
  final String welcomeMsg;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      margin: EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title, style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text(welcomeMsg, style: TextStyle(
                    color: Color.fromRGBO(215, 215, 215, 1.0),
                    fontSize: 14.0,
                  ),),
                ],
              ),
            ),
          ),
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
