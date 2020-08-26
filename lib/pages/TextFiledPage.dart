import 'package:flutter/material.dart';

class TextFiledPage extends StatefulWidget{
  TextFiledPage({Key key}):super(key: key);
  _TextFiledPageState createState() => _TextFiledPageState();
}
class _TextFiledPageState extends State<TextFiledPage>{

  //var _username = new TextEditingController();//表示初始化的时间给表单赋值
  var _password;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //this._username.text = "";//给username赋初始值

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本输入演示"),
      ),
      //body:TextDemo(),
      body: Column(
        children: [
          SizedBox(height: 10),
          TextField(
            //这里在输入的时间光标好像有点问题
            decoration: InputDecoration(
              hintText: "请输入您的用户名",
              labelText: "用户名",
              border: OutlineInputBorder(),
            ),
            //controller: this._password,//给文本框赋初始值
            onChanged: (value){//会获取文本的值
              setState(() {
                _password = value;
              });
            },
          ),
          SizedBox(height: 10),
          Center(
            child: RaisedButton(
              color: Colors.green,
              textColor: Colors.white,
              child: Text("登录"),
              onPressed: (){
                print("${_password}");
              },
            ),
          ),
        ],
      ),
    );
  }
}
class TextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),//上下左右的外边距是20
      child: Column(
        children: [
          TextField(
              decoration: InputDecoration(
                hintText: "最普通的输入框",
              )
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: "请输入您巴巴的几把长度",
              border: OutlineInputBorder(),//四周有边框的输入框
            ),
          ),
          SizedBox(height: 10),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText: "多行文本输入框",
              border: OutlineInputBorder(),//四周有边框的输入框
            ),
          ),
          SizedBox(height:10),
          TextField(
            obscureText: true,//是true的话就是密码框
            decoration: InputDecoration(
              hintText: "密码框",
              border: OutlineInputBorder(),//四周有边框的输入框
            ),
          ),
          SizedBox(height:10),
          TextField(
            decoration: InputDecoration(
              hintText: "用户名输入框",
              border: OutlineInputBorder(),//四周有边框的输入框
              labelText: "用户名",
            ),
          ),
        ],
      ),
    );
  }
}