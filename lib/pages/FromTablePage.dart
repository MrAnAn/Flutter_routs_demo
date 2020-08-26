import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FromTablePage extends StatefulWidget{
  FromTablePage({Key key}): super(key: key);
  _FromTablePageState createState() => _FromTablePageState();
}
class _FromTablePageState extends State<FromTablePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单组件的演示"),
      ),
      body: Text("表单租价演示"),
    );
  }
}