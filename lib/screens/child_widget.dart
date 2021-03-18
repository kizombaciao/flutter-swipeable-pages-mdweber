import 'package:flutter/material.dart';

enum AvailableNumber { First, Second, Third }

class ChildWidget extends StatelessWidget {
  final AvailableNumber number;

  const ChildWidget({Key key, this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String file = "";
    if (number == AvailableNumber.First) {
      //print(AvailableNumber.First.index);
      file = "first";
    } else if (number == AvailableNumber.Second) {
      file = "second";
    } else {
      file = "third";
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "$file screen",
          style: TextStyle(fontSize: 36.0),
        ),
        //Flexible(child: Image.asset("assets/undraw/$file.png"))
      ],
    );
  }
}
