// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  @override
  MarketState createState() => MarketState();
}

class MarketState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("市集"),
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
                  const Baseline(
                    baseline:30.0,
                    //对齐字符底部水平线
                    baselineType: TextBaseline.alphabetic,
                    child: const Text(
                      'AaBbCc',
                      style: TextStyle(
                        fontSize: 18.0,
                        textBaseline: TextBaseline.alphabetic,
                      ),
                    ),
                  ),
                  Baseline(
                    baseline: 80.0,
                    //对齐字符底部水平线
                    baselineType: TextBaseline.alphabetic,
                    child: Container(
                      width: 40,
                      height: 40,
                      color: Colors.greenAccent,
                    ),
                  ),
                  const Baseline(
                    baseline: 20.0,
                    //对齐字符底部水平线
                    baselineType: TextBaseline.alphabetic,
                    child: Text(
                      'DdEeFf',
                      style: TextStyle(
                        fontSize: 18.0,
                        textBaseline: TextBaseline.alphabetic,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}