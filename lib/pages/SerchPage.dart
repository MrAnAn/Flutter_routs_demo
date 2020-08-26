import 'package:flutter/material.dart';

class SerchPage extends StatefulWidget{
  SerchPage({Key key, arguments}): super(key: key);
  _SerchPageState createState() => _SerchPageState();
}
class _SerchPageState extends State<SerchPage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("搜索页面"),
        ),
        body: TextField(
          
        ),
      ),
    );
  }
}