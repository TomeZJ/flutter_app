import 'package:flutter/material.dart';

class BottomModalComp extends StatelessWidget {
   @override
  Widget build(BuildContext context){
    return Container(
      child: ElevatedButton(
        child: Text("BottomModal"),
        onPressed: (){
          showModalBottomSheet(
            context: context,
            // 关键代码
            isScrollControlled: true, // 空白处点击关闭
            backgroundColor: Colors.transparent,
            builder: (BuildContext context) {
              return Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10.0),
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      ElevatedButton(
                          child: Text('确认'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                      ElevatedButton(
                          child: Text('取消'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          })
                    ],
                  )
                );
            }
          );
        }
      )
    );
  }
}
