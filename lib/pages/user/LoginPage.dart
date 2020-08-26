import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  Map arguments;
  LoginPage({Key key,this.arguments}): super(key: key);
  _LoginPageState createState() => _LoginPageState(arguments:this.arguments);
}
class _LoginPageState extends State<LoginPage>{
  Map arguments;
  _LoginPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录"),
      ),
      body: Column(
        children: <Widget>[
          Text("用户名"),
          TextField(
            keyboardType: TextInputType.text,
          ),
          RaisedButton(
            child: Text("登录"),
            onPressed: (){
              //当登录完成以后返回上一级页面
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}