// ignore_for_file: avoid_print, avoid_unnecessary_containers, unnecessary_new

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginState createState() => new LoginState();
}

class LoginState extends State<LoginPage> {
  // 账号控制器
  TextEditingController accountController = TextEditingController();
  // 密码控制器
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white10,
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 48.0, right: 48.0, top: 205.0),
          child:ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top:16, bottom:16.0),
                child: TextField(
                  controller: accountController,
                    style: const TextStyle(color: Colors.blue),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurpleAccent),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                      prefixIcon: Icon(Icons.person_sharp),
                      // labelText: "账号",
                      hintText: "请输入账号！",
                      hintMaxLines: 1,
                      hintStyle: TextStyle(color:Colors.black38),
                      fillColor: Color(0x110099ee),
                      filled: true
                    ),
                    onEditingComplete: (){
                      print("onEditingComplete");
                    },
                    onChanged: _textFieldChanged,
                    onSubmitted: (v){
                      print("onSubmitted==>>   "+v);
                    },
                  )
              ),
              Container(
                child: TextField(
                  controller: passController,
                  keyboardType: TextInputType.number,
                  maxLength:6,
                  obscureText: true, //是否隐藏输入
                  style: const TextStyle(color: Colors.blue),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    // labelText: "密码",
                    prefixIcon: Icon(Icons.lock_sharp),
                    hintText: "请输入密码！",
                    hintMaxLines: 1,
                    hintStyle: TextStyle(color:Colors.black38),
                    helperText: "忘记密码",
                    helperStyle: TextStyle(
                      color: Colors.blue
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
                    suffixStyle: TextStyle(
                      color: Colors.green
                    )
                  ),
                  onEditingComplete: (){
                    print("onEditingComplete密码");
                  },
                  onChanged: (v){
                    print("onChanged密码==>>   "+v);
                  },
                  onSubmitted: (v){
                    print("onSubmitted密码==>>   "+v);
                  },
                )
              ),
              ElevatedButton(
                onPressed: _submitLogin,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xffEDFCF5)),
                  foregroundColor: MaterialStateProperty.all(const Color(0xff31C27C)), // 字体
                ),
                child: const Text('登录'),
              ),
            ],
          )
        ),
      ),
    );
  }

  // 登录
  void _submitLogin(){
    print({'account': accountController.text, 'password': passController.text});
    if (accountController.text.length != 11) {
      showDialog(context: context, builder: (context) => const AlertDialog(
        title:Text("账号格式不对")
      ));
    }else if (passController.text.length != 6) {
      showDialog(context: context, builder: (context) => const AlertDialog(
        title:Text("密码格式不对")
      ));
    } else {
      accountController.clear();
      passController.clear();
      Navigator.pushNamed(context, "/home"); //首页进来的登录
    }
  }

  void _textFieldChanged(String str) {
    print(str);
  }
}
