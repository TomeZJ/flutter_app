import 'package:flutter/material.dart';
import 'package:flutter_app/components/BannerComp.dart';


class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  CourseState createState() => CourseState();
}

class CourseState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("课堂"),
          backgroundColor: const Color.fromARGB(255, 119, 136, 213), //设置appbar背景颜色
          centerTitle: true, //设置标题是否局中
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Container(
                  height:300.0,
                  child: Flex(
                    direction: Axis.vertical,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height:100.0,
                  child: Flex(
                    direction: Axis.horizontal,
                    // 子组件的排列方式为主轴两端对齐
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 100.0,
                          color: Colors.blue,
                          child: const Text("22222"),
                        )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            height: 100.0,
                            color: Colors.red,
                            child: const Text("11111"),
                          ))
                    ],
                  )
                ),
                new BannerComp(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}