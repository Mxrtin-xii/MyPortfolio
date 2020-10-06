import 'package:flutter/material.dart';
import 'package:MyPortfolio/ResponsiveWidget.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        body: Center(
          child: Text(" About me"),
	            Text("Hi, I am a beginner web and mobile apps developer."),
                Text(
                    "i enjoy Writing custom and modular front-end code using \n
                      HTML5, CSS3 and W3C coding practises and cross platform mobile\n
                      app development with the flutter sdk ",
                       softWrap: true,
                       textScaleFactor: 1.5,
                       style: TextStyle(color: Colors.blue)
                       )
        ),
      ),
    );
  }
}