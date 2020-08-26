import 'dart:io';

import 'package:flutter/material.dart';

class ProtcedPageInfo extends StatefulWidget{
  Map arguments;
  ProtcedPageInfo({Key key,this.arguments}): super(key: key);
  _ProtcedPageInfoState createState() => _ProtcedPageInfoState(arguments:this.arguments);
}
class _ProtcedPageInfoState extends State<ProtcedPageInfo>{
  Map arguments;
  _ProtcedPageInfoState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情页面"),
      ),
      body: Text("商品的id是${this.arguments["pid"]}"),
    );
  }

}