// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// tab 页面
import 'package:flutter_app/pages/HomePage.dart';
import 'package:flutter_app/pages/CoursePage.dart';
import 'package:flutter_app/pages/MarketPage.dart';
import 'package:flutter_app/pages/MyPage.dart';

class AppNav extends StatefulWidget {
  const AppNav({Key? key}) : super(key: key);

  @override
  AppNavState createState() => AppNavState();
}

class AppNavState extends State<AppNav> {
  PageController _pageController = PageController(initialPage: 0);
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: <Widget>[
            HomePage(),//首页的内容
            CoursePage(), // 课堂的内容
            Text(
              'index4 :首页',
            ),
            MarketPage(), // 市集的内容
            MyPage(), // 我的的内容
          ],
          // onPageChanged: (index) {
          //   setState(() {
          //     this._selectedIndex = index;
          //     _setAppBarTitle();
          //   });
          // },
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "首页",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tv),
              label: "课堂",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "新增",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "市集",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label: "我的",
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          selectedFontSize: 12.0,
          onTap: (index) {
            // if (index == 3 || index == 2) {
            // _pageController.jumpToPage(index);
            // _currentIndex = index;
            if (index != 2) {
              _pageController.jumpToPage(index);
              _selectedIndex = index;
            } else {
              // BotToast.showText(text: "暂无新建项", align: Alignment.center);
              // showMainBottomSheet(context);
            }
            // }
          },
        ),
      )
    );
  }
}
