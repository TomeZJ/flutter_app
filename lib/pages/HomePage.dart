import 'package:flutter/material.dart';
//1. 引入路由跳转的页面
import 'package:flutter_app/pages/DetailPage.dart';
import 'package:flutter_app/components/AlertComp.dart';
import 'package:flutter_app/components/SimpleDialogComp.dart';
import 'package:flutter_app/components/BottomModalComp.dart';

class HomePage extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomePage> {
  final _titles = ['普通跳转','带参数普通跳转','构造函数直接传参数','携带参数返回','命名路由',"命名路由带参数",'generate路由','未定义的页面'];
  var _handleMessage = "";

  var bgColor; //父组件背景色
  var btnColor; //子组件背景色

  final data = List.generate(3, (index) => Color(0xffff00ff - 20*index));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Today"),
          backgroundColor: const Color.fromARGB(255, 119, 136, 213), // 设置appbar背景颜色
          centerTitle: true, // 设置标题是否局中
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 2.0,
            childAspectRatio: 1/0.618,
            children: [
              ...data.map((color) => _buildItem(color)).toList(),
              SimpleDialogComp(),
              BottomModalComp(),
              AlertComp(),
              buildJumpButton(context,_titles[0])
            ],
          )
        ),
        
      )
    );
  }

  Container _buildItem(Color color) => Container(
    alignment: Alignment.center,
    color: color,
    child: Text(
      colorString(color),
      style: const TextStyle(color: Colors.white, shadows: [
        Shadow(
          color: Colors.black,
          offset: Offset(.5,.5),
          blurRadius: 2
        )
      ])
    )
  );

  String colorString(Color color)=> "#${color.value.toRadixString(16).padLeft(8,'0').toUpperCase()}";

  Container buildJumpButton(BuildContext context,String title) {
    return Container(
      child: Scaffold(
        // 为了调整浮动按钮的大小，外层添加容器
        floatingActionButton:Container(
          width: 100.0,
          height:40.0,
          child: ElevatedButton(
            child: Text(title),
            onPressed:()=>_jumpToPage(context,title),
          ),
        )
      )
    );
  }

  void _jumpToPage(BuildContext context,String title) {
    print(title);
    if( title == _titles[0]){
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DetailPage()));
      return;
    }
  }

  void dalog(BuildContext context){
    showDialog<void>(
      context: context,
      barrierDismissible:false,
      builder: (BuildContext context){
        return AlertDialog(
          title: const Text("测试"),
          content: SingleChildScrollView(
            child: ListBody(children: <Widget>[
              const Text("中间内容"),
              const Text("中间内容1")
            ],),
          ),
          actions: <Widget>[
            ElevatedButton(
                child: const Text("close"),
                onPressed: (){
                  Navigator.of(context).pop(); //关闭弹框9
                },
              )
          ],
        );
      }
    );
  }
}