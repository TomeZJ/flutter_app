
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: tabPageHome(),
    );
  }
}

class tabPageHome extends StatefulWidget {
  @override
  _tabPageHomeState createState() => _tabPageHomeState();
}

class _tabPageHomeState extends State<tabPageHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,  // tabbar 的长度
        child: Scaffold(
          appBar: AppBar(
            title: Text('tabview'),
            bottom: TabBar(
              tabs: <Widget>[
                new Tab(text: "首页",icon: new Icon(Icons.android)),
                new Tab(text: "课堂",icon: new Icon(Icons.home)),
                new Tab(text: "发布",icon: new Icon(Icons.add_outlined)),
                new Tab(text: "市集",icon: new Icon(Icons.accessibility)),
                new Tab(text: "我的",icon: new Icon(Icons.people_sharp)),
              ],
            ),
          ),
          body: TabBarView(
              children: <Widget>[
                Icon(Icons.directions_bus),  // 可以改成自己的页面
                Icon(Icons.directions_car),   // 可以改成自己的页面
                Icon(Icons.add_outlined),   // 可以改成自己的页面
                Icon(Icons.directions_bike),   // 可以改成自己的页面
                Icon(Icons.people_sharp),   // 可以改成自己的页面
              ],
            )
        ));
  }

}

class tabBottomPageHome extends StatefulWidget {
  @override
  _tabBottomPageHome createState() => _tabBottomPageHome();
}

class _tabBottomPageHome extends State<tabBottomPageHome> {
  TabController? tabcontroller;

  //生命周期方法插入渲染树时调用，只调用一次
  @override
  void initState() {
    super.initState();
    tabcontroller = TabController(
        length: 5   //Tab页的个数
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new TabBarView(
          controller: tabcontroller,
          children: <Widget>[
            //创建之前写好的三个页面，万物皆是Widget
          ],
        ),
        bottomNavigationBar: new Material(
          //底部栏整体的颜色
          color: Colors.blueAccent,
          child: new TabBar(
            controller: tabcontroller,
            tabs: <Tab>[
              new Tab(text: "第一个",icon: new Icon(Icons.android)),
              new Tab(text: "第二个",icon: new Icon(Icons.home)),
              new Tab(text: "第三个",icon: new Icon(Icons.accessibility)),
            ],
            //tab被选中时的颜色，设置之后选中的时候，icon和text都会变色
            labelColor: Colors.amber,
            //tab未被选中时的颜色，设置之后选中的时候，icon和text都会变色
            unselectedLabelColor: Colors.black,
          ),
        )
    );
  }
}
