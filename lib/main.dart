import 'package:flutter/material.dart';

import 'routs/Routs.dart';


/**
 * 路由的练习
 * 程序的主入口
 */
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//配置在测试的时间debug是否显示
      //home:IndexPage(),
      initialRoute: '/', //表示程序初始化的时间需要加载的路由
      onGenerateRoute: onGenerateRoute
    );
  }
}
