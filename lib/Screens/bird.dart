import 'package:flutter/material.dart';

class MyBird extends StatelessWidget {
  MyBird(
      {Key? key, this.charY, required this.charHeight, required this.charWidth})
      : super(key: key);

  final charY;
  final double charWidth;
  final double charHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment(0, (2 * charY + charHeight) / (2 - charHeight)),
        child: Image.asset(
          'images/birdimg.png',
          width: MediaQuery.of(context).size.height * charWidth / 2,
          height: MediaQuery.of(context).size.height * 3 / 4 * charWidth / 2,
          fit: BoxFit.fill,
        ));
  }
}
