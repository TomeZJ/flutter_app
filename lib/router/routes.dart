// ignore_for_file: non_constant_identifier_names

import 'package:flutter_app/pages/login/Login.dart'; // 登录
import 'package:flutter_app/pages/home/tab_nav.dart';


List<Map<String, dynamic>> Routes(){
  return [
    //登录
    {"path": "/login", "view": const LoginPage()},
    {
      //首页路由
      "path": "/home",
      "view": const AppNav(),
    },
  ];
}