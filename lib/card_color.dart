import 'package:flutter/material.dart';

class CardColor extends StatelessWidget {
  List<Color> colorsOption;

  CardColor(this.colorsOption);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        gradient: LinearGradient(
            colors: colorsOption,
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight
        )
      ),
    );
  }
}
