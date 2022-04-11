// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  AddState createState() => AddState();
}

class AddState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("新增"),
          backgroundColor: const Color.fromARGB(255, 119, 136, 213), //设置appbar背景颜色
          centerTitle: true, //设置标题是否局中
        ),
        body: const SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Text("新增"),
        ),
      ),
    );
  }
}