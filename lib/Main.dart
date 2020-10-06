import 'package:flutter/material.dart';
import 'package:MyPortfolio/About.dart';
import 'package:MyPortfolio/Homepage.dart';

void main() {
   runapp(MyApp()); 
}

class MyApp extends stateless widget {

@override widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mxrtin',
        theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
        initialRoute: '/home',
        routes: {
            '/about':(context) => About(),
            '/home':(context) => Home()
        },
    );
  }
} 
