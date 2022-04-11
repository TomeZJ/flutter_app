// ignore_for_file: unnecessary_const, file_names

import 'package:flutter/material.dart';
class SliverComp extends StatelessWidget {
  const SliverComp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  SliverAppBar(
        expandedHeight: 190.0,
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          child: Image.network(
            "https://img-blog.csdnimg.cn/20190927151053287.png?x-oss-process=image/resize,m_fixed,h_64,w_64"
          ),
        ),
        flexibleSpace: FlexibleSpaceBar(
          // 伸展处布局
          titlePadding: const EdgeInsets.only(left:55.0, bottom: 15.0), // 标题边距
          collapseMode: CollapseMode.parallax, // 视差效果
          title: const Text(
            "我是站三",
            style: const TextStyle(
              color: Colors.blue,
              shadows: [
                Shadow(color: Colors.orange, offset: const Offset(1.0,1.0), blurRadius: 2.0)
              ]
            ),
          ),
          background: Image.asset("images/avatar.jpeg", fit: BoxFit.cover),
          // background:  Image(image: AssetImage('images/avatar.jpeg'), fit: BoxFit.cover),
        ),
      );
  }
}