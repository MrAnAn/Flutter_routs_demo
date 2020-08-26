import 'package:flutter/material.dart';

import '../pages/IndexPage.dart';
import '../pages/FromPage.dart';
import '../pages/ProtcedPage.dart';
import '../pages/ProtcedPageInfo.dart';
import '../pages/SerchPage.dart';
import '../pages/user/LoginPage.dart';
import '../pages/user/RegisterOnePage.dart';
import '../pages/user/RegisterTwoPage.dart';
import '../pages/user/RegisterThreePage.dart';
import '../pages/AppBarDemo.dart';
import '../pages/TapTabarPage.dart';
import '../pages/TabControllerPage.dart';
import '../pages/UserPage.dart';
import '../pages/ButtonPage.dart';
import '../pages/TextFiledPage.dart';
import '../pages/FromTablePage.dart';
import '../pages/checkBoxPage.dart';
import '../pages/RadioPage.dart';
import '../pages/FromDemoPage.dart';
import '../pages/DateTimePage.dart';
import '../pages/ThreeDateTimePage.dart';


final routes ={
  '/':(content)=>IndexPage(),
  '/from':(content)=> FromPage(),
  '/protced':(content)=> ProtcedPage(),
  '/protecdinfo':(content,{arguments})=>ProtcedPageInfo(arguments:arguments),
  '/serch':(content,{arguments})=>SerchPage(arguments:arguments),
  '/login':(content)=>LoginPage(),
  //下面这三个Widget演示的是如何使用路由替换和返回到跟路由 按钮在HomePage
  '/registerone':(content)=>RegisterOnePage(),
  '/registerotwo':(content)=>RegisterTwoPage(),
  '/registerthree':(content)=>RegisterThreePage(),
  '/appBarDemo':(content)=>AppBarDemo(),
  '/tapTabar':(content)=>TapTabarPage(),
  '/tabController':(content)=>TabControllerPage(),
  '/user':(content)=>UserPage(),
  '/button':(content)=>ButtonPage(),
  '/textFiled':(content)=>TextFiledPage(),
  '/fromTable':(content)=>FromTablePage(),
  '/checkBox':(content)=>checkBoxPage(),
  '/radio':(content)=>RadioPage(),
  '/fromDemo':(content)=>FromDemoPage(),
  '/dateTime':(content)=>DateTimePage(),
  '/threeDateTime':(content)=>ThreeDateTimePage(),
};
//主要就是把这段儿代码搞懂就行
var onGenerateRoute=(RouteSettings settings){
  //统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
    if(pageContentBuilder != null){
      if(settings.arguments != null){
      final Route route = MaterialPageRoute(
        builder: (context)=>
        pageContentBuilder(context,arguments:settings.arguments));
      return route;
      }else{
        final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
