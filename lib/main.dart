import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/router/router.dart';
import 'router/router.dart';

// tab 页面
import 'package:flutter_app/pages/HomePage.dart';
import 'package:flutter_app/pages/CoursePage.dart';
import 'package:flutter_app/pages/MarketPage.dart';
import 'package:flutter_app/pages/MyPage.dart';
//1. 引入路由跳转的页面
import 'package:flutter_app/pages/DetailPage.dart';
import 'package:flutter_app/pages/login/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  MyApp({Key? key}) : super(key: key);

  static const String _title = "Flutter Code Sample";

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: true, // 隐藏debug
      // 路由 (路由表匹配不到就走路由守卫)
      initialRoute: "/login",
      // routes: {
      //   '/login': (context) => LoginPage(),
      //   '/DetailPage': (context) => DetailPage(),  // 2. 配置跳转页面
      // },
      routes: myRouter(context),
    );
  }
}

// 第一个大框架的外部创建Widget
class MyStatefulWidget extends StatefulWidget{
  MyStatefulWidget() : super();

  @override
  State<StatefulWidget> createState() => _MyStatefulWidgetState();
}

///最外面的框架的结构
class _MyStatefulWidgetState extends State<MyStatefulWidget>{
  int _selectedIndex = 0;

  static List<Widget> _widget = <Widget>[
    new HomePage(),//首页的内容
    new CoursePage(), // 课堂的内容
    Text(
      'index4 :首页',
    ),
    new MarketPage(), // 市集的内容
    new MyPage(), // 我的的内容
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widget.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:"首页",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label:"课堂",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label:"新增",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label:"市集",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label:"我的",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        selectedFontSize: 12.0,
        onTap: _onItemTapped,
      ),
    );
  }
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
}
