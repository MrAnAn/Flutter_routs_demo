import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RadioPage extends StatefulWidget{
  RadioPage({Key key}):super(key: key);
  _RadioPageState createState() => _RadioPageState();
}
class _RadioPageState extends State<RadioPage>{
  int sex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text("男"),
              Radio(
                groupValue:this.sex,
                value: 1,
                onChanged: (val){
                  setState(() {
                    this.sex = val;
                  });
                },
              ),
            ],
          ),
          Row(
            children: [
              Text("女"),
              Radio(
                value: 2,
                groupValue:this.sex,
                onChanged: (val){
                  setState(() {
                    this.sex = val;
                  });
                },
              ),
            ],
          ),
          Row(
            children: [
              Text(this.sex == 1?"男":"女"),
            ],
          ),
          SizedBox(height: 40),
          RadioListTile(
            value: 1,
            onChanged: (val){
              setState(() {
                this.sex = val;
              });
            },
            groupValue: this.sex,
            title: Text("标题"),
            subtitle: Text("二级标题"),
            secondary: Icon(Icons.accessibility),
            selected: this.sex == 1,//选中这个radio列表的时间的的样式
          ),
          RadioListTile(
            value: 2,
            onChanged: (val){
              setState(() {
                this.sex = val;
              });
            },
            groupValue: this.sex,
            title: Text("标题"),
            subtitle: Text("二级标题"),
            secondary: Icon(Icons.menu),
            selected: this.sex == 2,
          ),
        ],
      ),
    );
  }

}