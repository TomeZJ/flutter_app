import 'package:flutter/material.dart';

class SliverComp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return  SliverAppBar(
        expandedHeight: 190.0,
        leading: Container(
          margin: EdgeInsets.all(10.0),
          child: Image.network(
            "https://img-blog.csdnimg.cn/20190927151053287.png?x-oss-process=image/resize,m_fixed,h_64,w_64"
          ),
        ),
        flexibleSpace: FlexibleSpaceBar(
          // 伸展处布局
          titlePadding: EdgeInsets.only(left:55.0, bottom: 15.0), // 标题边距
          collapseMode: CollapseMode.parallax, // 视差效果
          title: Text(
            "我是站三",
            style: TextStyle(
              color: Colors.blue,
              shadows: [
                Shadow(color: Colors.orange, offset: Offset(1.0,1.0), blurRadius: 2.0)
              ]
            ),
          ),
          background: Image.asset("image/avatar.jpeg", fit: BoxFit.cover),
        ),
      );
  }
}