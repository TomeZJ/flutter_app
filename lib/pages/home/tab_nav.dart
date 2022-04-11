// ignore_for_file: prefer_const_constructors, prefer_final_fields, unnecessary_this

import 'package:flutter/material.dart';
// tab 页面
import 'package:flutter_app/pages/HomePage.dart';
import 'package:flutter_app/pages/CoursePage.dart';
import 'package:flutter_app/pages/MarketPage.dart';
import 'package:flutter_app/pages/MyPage.dart';
import 'package:flutter_app/pages/AddPage.dart';
class AppNav extends StatefulWidget {
  const AppNav({Key? key}) : super(key: key);

  @override
  AppNavState createState() => AppNavState();
}

class AppNavState extends State<AppNav> {

  int _selectedIndex = 0;

  PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Future.value(false);
      },
      child: Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: <Widget>[
            HomePage(),// 首页的内容
            CoursePage(), // 课堂的内容
            AddPage(), // 新增的内容
            MarketPage(), // 市集的内容
            MyPage(), // 我的的内容
          ],
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
            print(index);
            _pageController.jumpToPage(index);
            setState(() {
              this._selectedIndex = index;
            });
            // if (index != 2) {
            //   _pageController.jumpToPage(index);
            //   _selectedIndex = index;
            // } else {
            //   // BotToast.showText(text: "暂无新建项", align: Alignment.center);
            //   // showMainBottomSheet(context);
            // }
          },
        ),
      )
    );
  }
}
