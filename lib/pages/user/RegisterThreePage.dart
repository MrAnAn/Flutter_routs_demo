import 'package:flutter/material.dart';

class RegisterThreePage extends StatefulWidget{
  Map arguments;
  RegisterThreePage({Key key,this.arguments}): super(key: key);
  _RegisterThreePageState createState() => _RegisterThreePageState(arguments:this.arguments);
}
class _RegisterThreePageState extends State<RegisterThreePage>{
  Map arguments;
  _RegisterThreePageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册"),
      ),
      body: Column(
        children: <Widget>[
          Text("用户名"),
          TextField(
            keyboardType: TextInputType.text,
          ),
          RaisedButton(
            child: Text("确定"),
            onPressed: (){
              //替换路由返回到跟路由
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}