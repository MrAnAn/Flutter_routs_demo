import 'package:flutter/material.dart';

class RegisterOnePage extends StatefulWidget{
  Map arguments;
  RegisterOnePage({Key key,this.arguments}): super(key: key);
  _RegisterOnePageState createState() => _RegisterOnePageState(arguments:this.arguments);
}
class _RegisterOnePageState extends State<RegisterOnePage>{
  Map arguments;
  _RegisterOnePageState({this.arguments});
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
              //路由替换  (当返回的时间,会替换路由,返回到跟路由)
              Navigator.of(context).pushReplacementNamed('/registerotwo');
            },
          ),
        ],
      ),
    );
  }
}