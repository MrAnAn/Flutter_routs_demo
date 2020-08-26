import 'package:flutter/material.dart';

/**
 * 设置页面
 */
class SettingsPage extends StatefulWidget{
  SettingsPage({Key key}): super(key: key);
  _SettingsPageState createState() => _SettingsPageState();
}
class _SettingsPageState extends State<SettingsPage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          RaisedButton(
            child: Text("去商品页面"),
            onPressed: (){
              /*Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProtcedPage(),
                ),
              );*/
              //命名路由配置写法
              Navigator.pushNamed(context, '/protced');
            },
          ),
        ],
      ),
    );
  }
}