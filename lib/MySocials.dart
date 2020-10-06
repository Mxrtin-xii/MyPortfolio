import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:MyPortfolio/ResponsiveWidget.dart';

class MySocials extends StatelessWidget {
  const MySocials({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                  onPressed: (){
                     html.window.open(
                  "https://github.com/Mxrtin-xii",
                  "GDE");
                  },
                  color:Colors.white,
                  child: Center(
                    child: Row(
                      children: [
                         Text("Github",
                         style: GoogleFonts.lemon(
                          textStyle: TextStyle(color: Colors.black)
                         ),
                         ),
                         Icon(MdiIcons.github, color: Colors.black)
                      ],),
                  ),
                  ),
                   FlatButton(onPressed: () {
                     html.window.open(
                  "https://twitter.com/Martzyy_)",
                  "GDE");
                   },
                   color:Colors.white,
                   child:Row(
                     children:[
                      Text("Twitter",
                      style: GoogleFonts.lemon(
                        textStyle: TextStyle(color: Colors.blueAccent)
                      ),
                      ),
                      Icon(MdiIcons.twitter, color: Colors.blue)
                     ]))
            ]
          ),
          Text("X.I.I © 2020",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold
          ),
          )
        ],
        ),
        smallScreen:  Column(
          children: [
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlatButton(
                  onPressed: (){
                     html.window.open(
                  "https://github.com/Mxrtin-xii",
                  "GDE");
                  },
                  color:Colors.white,
                  child: Center(
                    child: Row(
                      children: [
                         Text("Github",
                         style: GoogleFonts.lemon(
                          textStyle: TextStyle(color: Colors.black)
                         ),
                         ),
                         Icon(MdiIcons.github, color: Colors.black)
                      ],),
                  ),
                  ),
                   FlatButton(onPressed: () {
                      html.window.open(
                  "https://twitter.com/Martzyy_",
                  "GDE");
                   },
                   color:Colors.white,
                   child:Row(
                     children:[
                      Text("Twitter",
                      style: GoogleFonts.lemon(
                        textStyle: TextStyle(color: Colors.blueAccent)
                      ),
                      ),
                      Icon(MdiIcons.twitter, color: Colors.blue)
                     ]))
                ]
              ),
              SizedBox(height:50),
              Text("X.I.I © 2020",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold
              ),
              )
          ],
        )
    );
  }
}
