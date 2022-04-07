// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class  BannerComp extends StatelessWidget {

  final data = <Color>[
    Colors.yellowAccent,
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.blueGrey,
    Colors.pinkAccent,
  ];

  @override
  Widget build(BuildContext context){
    return Container(
      height: 300.0,
      child: PageView(
        onPageChanged: (posi){
          print(posi);
        },
        children: data.map((color) => Container(
          alignment: Alignment.center,
          width: 90.0,
          height: 20.0,
          color: color,
          child: Text(
            colorString(color),
            style: const TextStyle(
              color: Colors.black54,
              fontSize:24.0,
              shadows: [
                Shadow(
                  color: Colors.white,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 10.0
                )
              ]
            ),
          ),
        )).toList(),
      ),
    );
  }

  String colorString(Color color) => 
    "#${color.value.toRadixString(16).padLeft(8,'0').toUpperCase()}";
}