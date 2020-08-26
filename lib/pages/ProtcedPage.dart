import 'package:flutter/material.dart';


/**
 * 商品页面
 */
class ProtcedPage extends StatefulWidget{
  ProtcedPage({Key key}): super(key:key);
  _ProtcedPageState createState() => _ProtcedPageState();
}
class _ProtcedPageState extends State<ProtcedPage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("商品页面"),
     ),
     body: RaisedButton(
       child: Text("去商品详情页面"),
       onPressed: (){
         /*Navigator.of(context).push(
           MaterialPageRoute(
             builder: (context) => ProtcedPageInfo(),
           ),
         );*/
         Navigator.pushNamed(context, '/protecdinfo',arguments: {
           "pid":123456
         });
       },
     ),
   );
  }

}