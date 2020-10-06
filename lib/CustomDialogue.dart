import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'dart:html' as html;

class CustomDialogue extends statelesswidget {
    final Image image;
    const CustomDialogue({
        this.image,
        });
    @override widget build(Buildcontext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              BorderRadius: BorderRadius.circular(Consts.padding),
           ),
           elevation: 0.0,
           backgroundColor: Colors.transparent,
           child: dialogContent(context), 
        );
    }
}
    dialogContent(BuildContext context) {
  return Stack(
    children: <Widget>[
      Container(
  padding: EdgeInsets.only(
    top: Consts.avatarRadius + Consts.padding,
    bottom: Consts.padding,
    left: Consts.padding,
    right: Consts.padding,
  ),
  margin: EdgeInsets.only(top: Consts.avatarRadius),
  decoration: new BoxDecoration(
    color: Colors.white,
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(Consts.padding),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 10.0,
        offset: const Offset(0.0, 10.0),
      ),
    ],
  ),

  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Text(
        "Contact Me",
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w700,
        ),
      ), 
      SizedBox(height: 24.0),
      Row(
        children: [
          SizedBox(width: 45,),
          Container(
            alignment: Alignment.bottomCenter,
            child: FlatButton(
              color: Colors.lightGreen,
              onPressed: () {
                html.window.open(
                  "https://wa.me/qr/",
                  "GDE");
                Navigator.of(context).pop();
             },
              child: Row(
                children: [
                  Text("WhatsApp", style: TextStyle(color: Colors.white),),
                  Icon(MdiIcons.whatsapp, color: Colors.white,)
                ],
              ),
            ),
          ),
          SizedBox(width: 70),
           Container(
             width: 120,
            alignment: Alignment.bottomCenter,
            child: FlatButton(
              color: Colors.red,
              onPressed: () {
                Navigator.of(context).pop();
             },

              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Gmail", style: TextStyle(color: Colors.white),),
                  ),
                  Icon(MdiIcons.gmail, color: Colors.white,)
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  ),
),

	Positioned(
                  left: Consts.padding,
                  right: Consts.padding,
                  child:CircleAvatar(
                  radius: Consts.avatarRadius,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  child: Image.asset("mefour.jpg", fit:BoxFit.contain, height: 93,)
                ),
                ),
    ],
  );
}






class Consts {
  Consts._();
  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}



