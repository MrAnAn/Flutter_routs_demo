import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  HomePage({Key key}): super(key:key);
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
          child: Text("去登录页面"),
          onPressed: (){
            Navigator.pushNamed(context,'/login');
          },
        ),
        RaisedButton(
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
          child: Text("去注册页面"),
          onPressed: (){
            Navigator.pushNamed(context, '/registerone');
          },
        ),
        RaisedButton(
          child: Text("去appBar页面"),
          onPressed: (){
            Navigator.pushNamed(context,'/appBarDemo');
          },
        ),
        RaisedButton(
          child: Text("去Button演示页面"),
          onPressed: (){
            Navigator.pushNamed(context,'/button');
          },
        ),
        RaisedButton(
          child: Text("去表单组件演示页面"),
          onPressed: (){
            Navigator.pushNamed(context,'/textFiled');
          },
        ),
        RaisedButton(
          child: Text("去textFlied组件演示页面"),
          onPressed: (){
            Navigator.pushNamed(context,'/fromTable');
          },
        ),
        RaisedButton(
          child: Text("去checkBox组件演示页面"),
          onPressed: (){
            Navigator.pushNamed(context,'/checkBox');
          },
        ),
        RaisedButton(
          child: Text("去Radio组件演示页面"),
          onPressed: (){
            Navigator.pushNamed(context,'/radio');
          },
        ),
        RaisedButton(
          child: Text("表单组件综合练习"),
          onPressed: (){
            Navigator.pushNamed(context,'/fromDemo');
          },
        ),
        RaisedButton(
          child: Text("日期组件演示"),
          onPressed: (){
            Navigator.pushNamed(context,'/dateTime');
          },
        ),
        RaisedButton(
          child: Text("第三方日期组件"),
          onPressed: (){
            Navigator.pushNamed(context,'/threeDateTime');
          },
        ),
      ],
    );
  }
}