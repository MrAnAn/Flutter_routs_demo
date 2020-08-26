import 'package:flutter/material.dart';

class TapTabarPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,//这个属性必须要配置,否则报错
      child: Scaffold(
        appBar: AppBar(
          title: Text("tab"),
          bottom: TabBar(
            tabs: [
              Tab(text: "热门"),
              Tab(text: "推荐"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                ListTile(
                  title: Text("第一个"),
                )
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text("第二个"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

}