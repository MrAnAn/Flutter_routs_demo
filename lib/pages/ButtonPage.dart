import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/**
 * 按钮的演示
 */
class ButtonPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮演示"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(//凸起按钮组件
                child: Text("普通按钮组件"),
                onPressed: (){

                },
              ),
              SizedBox(width: 10),
              RaisedButton(//凸起按钮组件
                child: Text("有颜色按钮组件"),
                color: Colors.blue,
                textColor:Colors.green,
                mouseCursor: MouseCursor.uncontrolled,
                onPressed: (){

                },
              ),

            ],
          ),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                child: RaisedButton(
                  child: Text("按钮Size"),
                  onPressed: (){

                  },
                ),

              ),
              SizedBox(width: 10),
              RaisedButton(//凸起按钮组件
                child: Text("有阴影按钮组件"),
                autofocus: true,
                elevation:20,
                color: Colors.blue,
                textColor:Colors.green,
                mouseCursor: MouseCursor.uncontrolled,
                onPressed: (){

                },
              ),
              SizedBox(width: 5),
              RaisedButton.icon(
                  icon: Icon(Icons.settings),
                  label: Text("图标按钮"),
                  //给按钮配置圆角
                shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(150),
                ),
                onPressed: (){

                },
              ),
              FlatButton(
                child: Text("扁平化按钮"),
                onPressed: (){
                  print("FlatButton是扁平化按钮");
                },
              ),

            ]
          ),
          Row(
            children: [
              OutlineButton(
                child: Text("线框按钮"),
                onPressed: (){
                  print("线框按钮");
                },
              ),
            ],
          ),
          Row(
            children: [
              ButtonBar(//可以放置多个按钮
                children: [
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: (){

                    },
                  ),
                  RaisedButton(
                    child: Text("登录"),
                    color: Colors.red,
                    onPressed: (){
                      print("登录");
                    },
                  ),
                  RaisedButton(
                    child: Text("注册"),
                    color: Colors.red,
                    onPressed: (){
                      print("注册");
                    },
                  ),
                  MyButton(//自定义按钮
                    text: "自定义按钮",
                    onPressed: (){
                      print("自定义按钮");
                    },
                    wigth: 50.0,
                    height: 50.0,
                  ),

                ],
              ),
              Row(
                children: [
                  FloatingActionButton(
                    child: Text("浮动"),
                    autofocus:true,
                    onPressed: (){

                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
//自定义按钮组件
class MyButton extends StatelessWidget{
  String text="Button";
  final onPressed;
  double wigth;
  double height;
  MyButton({this.text,this.onPressed,this.wigth=80,this.height=30});
  @override
  Widget build(BuildContext context) {
   return Container(
      width: this.wigth,
      height: this.height,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.onPressed,
      ),
   );
  }
}