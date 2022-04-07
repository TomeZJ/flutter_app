/*
* AlertDialog(提示框)
*/ 

import 'package:flutter/material.dart';

class AlertComp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      child: ElevatedButton(
          child: Text("Alert"),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 16.0)), //字体
            backgroundColor: MaterialStateProperty.all(Color(0xffEDFCF5)), //背景颜色
            foregroundColor: MaterialStateProperty.all(Color(0xff31C27C)), //字体颜色
            overlayColor: MaterialStateProperty.all(Colors.blue),// 高亮色
            side: MaterialStateProperty.all(BorderSide(width: 2,color: Colors.blue)),//边框
            shadowColor: MaterialStateProperty.all(Colors.red), //阴影
            elevation: MaterialStateProperty.all(10), //阴影值
            // shape: MaterialStateProperty.all(BeveledRectangleBorder(borderRadius: BorderRadius.circular(15))),//棱角  扁平或“斜角”角的矩形
            // shape: MaterialStateProperty.all(
            //     CircleBorder( // 适合圆的边界
            //         side: BorderSide(
            //           //设置 界面效果
            //           color: Colors.green,
            //           width: 280.0,
            //           style: BorderStyle.none,
            //         )
            //     )
            // ),//圆 
            shape: MaterialStateProperty.all(
                StadiumBorder( // 半圆角矩形
                    side: BorderSide(
                      //设置 界面效果
                      style: BorderStyle.solid,
                      color: Color(0xffFF7F24),
                    )
                )
            ),//圆角弧度
          ),
          onPressed: (){
            dalog(context);
          },
        )
    );
  }

  void dalog(BuildContext context){
    showDialog<void>(
      context: context,
      barrierDismissible:false,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("测试"),
          content: SingleChildScrollView(
            child: ListBody(children: <Widget>[
              Text("中间内容"),
              Text("中间内容1")
            ],),
          ),
          actions: <Widget>[
            ElevatedButton(
                child: Text("Close"),
                onPressed: (){
                  Navigator.of(context).pop(); //关闭弹框9
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xffEDFCF5)),
                  foregroundColor: MaterialStateProperty.all(Color(0xff31C27C)),                //字体
                )
              )
          ],
        );
      }
    );
  } 
} 
  
  
