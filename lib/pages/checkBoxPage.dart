import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/**
 * checkBox演示
 */
class checkBoxPage extends StatefulWidget{
  checkBoxPage({Key key}):super(key: key);
  _checkBoxPageState createState() => _checkBoxPageState();
}
class _checkBoxPageState extends State<checkBoxPage>{
  bool flage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("checkBox"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Checkbox(
                value: this.flage,
                onChanged: (val){
                  setState(() {
                    this.flage = val;
                  });
                },

              ),
              Row(
                children: [
                  Text(this.flage?"选中":"未选中"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

}