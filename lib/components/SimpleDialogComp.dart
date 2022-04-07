/*
* simpleDialog （简洁的弹框，多步骤弹框）
*/ 

import 'package:flutter/material.dart';

enum Department{
  one,
  two,
  three
}

class SimpleDialogComp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      child: ElevatedButton(
        child: const Text("SimpleDialog"),
        onPressed: (){
          simpleDialog(context);
        },
      )
    );
  }


  void simpleDialog(BuildContext context) async{
    switch(await showDialog<Department>(
      context: context,
      builder:(BuildContext context) {
        return SimpleDialog(
          title: const Text("simpleTitle"),
          children: [
            SimpleDialogOption(
              child: const Text("NO.1"),
              onPressed: () {
                Navigator.pop(context, Department.one);
              },
            ),
            SimpleDialogOption(
              child: const Text("NO.2"),
              onPressed: () {
                Navigator.pop(context, Department.two);
              },
            ),
            SimpleDialogOption(
              child: const Text("NO.3"),
              onPressed: () {
                Navigator.pop(context, Department.three);
              },
            ),
          ],
        );
      },
    )) {
      case Department.one:
        print("No.1");
        break;
      case Department.two:
        print("No.2");
        break;
      case Department.three:
        print("No.3");
        break;
    }
  }
}