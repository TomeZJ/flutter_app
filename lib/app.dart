/**
 * APP的主入口文件
 */

import 'package:flutter/material.dart';

import 'package:flutter_app/Today.dart';
import 'package:flutter_app/playground.dart';
import 'package:flutter_app/Kb.dart';

//主界面
class Guohe extends StatefulWidget {
  @override
  GuoheState createState() => new GuoheState();
}

class GuoheState extends State<Guohe> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
    //监听索引变化
    // _tabController.addListener(() {
    //   print(_tabController.index);
    // });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new Today(),
            new Kb(),
            new Playground(),
          ],
        ),
        bottomNavigationBar: new Material(
          color: Colors.white,
          child: new TabBar(
            controller: _tabController,
            labelColor: Colors.deepPurpleAccent,
            unselectedLabelColor: Colors.black26,
            tabs: <Widget>[
              new Tab(
                text: "今日",
                icon: new Icon(Icons.brightness_5),
              ),
              new Tab(
                text: "课表",
                icon: new Icon(Icons.map),
              ),
              new Tab(
                text: "操场",
                icon: new Icon(Icons.directions_run),
              ),
            ],
          ),
        ),
      ),
    );
  }
}