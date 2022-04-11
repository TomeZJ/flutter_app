import 'package:flutter/material.dart';
import 'package:flutter_app/components/SliverComp.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  MyState createState() => MyState();
}

class MyState extends State<MyPage> {
  final data = <Color>[
    Colors.yellowAccent,
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.yellowAccent,
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.yellowAccent,
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.yellowAccent,
    Colors.green,
    Colors.red,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: new AppBar(
        //   title: new Text("我的"),
        //   backgroundColor: const Color.fromARGB(255, 119, 136, 213), //设置appbar背景颜色
        //   centerTitle: true, //设置标题是否局中
        // ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          // child: CustomScrollView(
          //   anchor: 0,
          //   scrollDirection: Axis.vertical,
          //   reverse: false,
          //   slivers: [const SliverComp(),_buildSliderList()],
          // ),
          child:const Text("我的"),
        ),
      ),
    );
  }

  Widget _buildSliderList() => SliverList(
    delegate: SliverChildBuilderDelegate(
      (_,int index)=> Container(
        alignment: Alignment.center,
        width: 100.0,
        height: 50.0,
        color: data[index],
        child: Text(
          colorString(data[index]),
          style: const TextStyle(
            color: Colors.black54,
            fontSize:15.0,
            shadows: [
              Shadow(
                color: Colors.white,
                offset: Offset(2.0, 2.0),
                blurRadius: 10.0
              )
            ]
          ),
        ),
      ),
      childCount: data.length
    ), 
  );

  String colorString(Color color) => 
    "#${color.value.toRadixString(16).padLeft(8,'0').toUpperCase()}";
}