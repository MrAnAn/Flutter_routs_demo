import 'package:flutter/material.dart';

class UserPage extends StatefulWidget{
  _UserPageState createState() => _UserPageState();
}
class _UserPageState extends State<UserPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("用户中心"),
        shadowColor: Colors.red,
        elevation: 3,
      ),
    );
  }
}