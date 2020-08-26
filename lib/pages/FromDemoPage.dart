import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 表单组件综合练习
 */
class FromDemoPage extends StatefulWidget{
 FromDemoPage({Key key}):super(key: key);
 _FromDemoPageState createState() => _FromDemoPageState();
}
class _FromDemoPageState extends State<FromDemoPage> {
  int sex = 1; //男
  String username;

  //定义爱好的集合
  List hobby = [
    {
      "checked": false,
      "title": "打篮球"
    },
    {
      "checked": false,
      "title": "聊女优"
    },
    {
      "checked": false,
      "title": "泡酒吧"
    },
  ];

  //定义循环爱好的集合
  List<Widget> _Hobby(){
    List<Widget> templist = [];
    for(int i=0;i<this.hobby.length;i++){
      templist.add(
          Row(
              children: [
                Text(this.hobby[i]['title']+":"),
                Checkbox(//复选框
                  value:this.hobby[i]['checked'],
                  onChanged: (val){
                    setState(() {
                      this.hobby[i]['checked'] = val;
                    });
                  },
                ),
              ],
          ),
      );
    }
    return templist;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("学员信息登记系统"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "请输入用户名",
                border: OutlineInputBorder(),
                labelText: "用户名",
              ),
              onChanged: (val) {
                setState(() {
                  this.username = val;
                });
              },
            ),
            Row(
              children: [
                Text("男"),
                Radio(//单选按钮
                  value: 1,
                  groupValue: this.sex,
                  onChanged: (val) {
                    setState(() {
                      this.sex = val;
                    });
                  },
                ),
                Text("女"),
                Radio(
                  value: 2,
                  groupValue: this.sex,
                  onChanged: (val) {
                    setState(() {
                      this.sex = val;
                    });
                  },
                ),
              ],
            ),
            //爱好
            Column(
              children: this._Hobby(),
            ),
            Container(
              child: RaisedButton(
                child: Text("确认提交数据"),
                onPressed: () {
                  print("${this.sex == 1 ? "男" : "女"}===${this.username}");
                  print("${this.hobby}");
                },
              ),
            ),
            Center(
              child: Text("${this.sex == 1 ? "男" : "女"}===${this.username}"),
            ),
          ],
        ),
      ),
    );
  }
}
