import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  DetailState createState() => new DetailState();
}

class DetailState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("detail"),
          backgroundColor: Color.fromARGB(255, 119, 136, 213), //设置appbar背景颜色
          centerTitle: true, //设置标题是否局中
        ),
        body: new Center(
          child: new Text('detail'),
        ),
      ),
    );
  }
}