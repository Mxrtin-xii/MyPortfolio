import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class MxrtinSpacer extends StatelessWidget {
  const MxrtinSpacer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FadeAnimatedTextKit(
        repeatForever: true,
        text: [
        "Martin X.I.I",
        ],
        textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
      SizedBox(
        width: 5,
      ),
      AnimatedContainer(duration: Duration(milliseconds: 1),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.blue
      ),
      )
      ],
    );
  }
}