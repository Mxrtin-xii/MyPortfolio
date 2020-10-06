import 'dart:html' as html;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:MyPortfolio/MxrtinSpacer.dart';
import 'package:MyPortfolio/NavigantionBtn.dart';
import 'package:MyPortfolio/ResponsiveWidget.dart';

class NavHead extends StatelessWidget {
  const NavHead({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
        ? MainAxisAlignment.center
        :MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MxrtinSpacer(),
        if (!ResponsiveWidget.isSmallScreen(context))
      Row(
        children: [
          Navbtn(
            text: "Resume",
            onPressed: () {
               html.window.open(
                  "https://docs.google.com/forms/d/e/1FAIpQLSfpcN8-5afrbzixpJu-V2ZnfsMe9_NeYXthxZ9sEFw-VWUyHQ/viewform)",
                  "GDE");
            }
          ),
          Navbtn(
            text: "Contact",
            onPressed: () {
              html.window.open(
                  "https://t.me/Thexiith",
                  "GDE");
            })
        ])
        ],
      ),
    );
  }
}

