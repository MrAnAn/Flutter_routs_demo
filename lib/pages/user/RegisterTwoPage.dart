import 'package:flutter/material.dart';

class RegisterTwoPage extends StatefulWidget{
  Map arguments;
  RegisterTwoPage({Key key,this.arguments}): super(key: key);
  _RegisterTwoPageState createState() => _RegisterTwoPageState(arguments:this.arguments);
}
class _RegisterTwoPageState extends State<RegisterTwoPage>{
  Map arguments;
  _RegisterTwoPageState({this.arguments});
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
            child: Text("下一步"),
            onPressed: (){
              //替换路由
              Navigator.of(context).pushReplacementNamed('/registerthree');
            },
          ),
        ],
      ),
    );
  }
}