import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget{
  @override
  //nox_adb.exe connent 127.0.0.1:62001
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title:Text("您好"),
        /*leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: (){
            print("阿牛");
          },
        ),*/
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){
              print("阿牛r");
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){
              print("阿牛r1");
            },
          ),
        ],
      ),
      body: Center(
        child: RaisedButton(
          child: Text("跳到自定义顶部tab"),
          onPressed: (){
            Navigator.pushNamed(context,'/tapTabar');
          },
        ),
      ),
    );
  }
}