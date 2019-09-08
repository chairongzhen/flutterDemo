import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBarDemoPage"),
          centerTitle: true,
          backgroundColor: Colors.red,
          bottom: TabBar(tabs: <Widget>[ 
          Tab(text: "热门"),
          Tab(text: "推荐")
          ],
        ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(children: <Widget>[
              ListTile(title: Text("i am first page section 1"),),
              ListTile(title: Text("i am frist page section 2"),)
            ],),
            ListView(children: <Widget>[
              ListTile(title: Text("i am second page section 1"),),
              ListTile(title: Text("i am second page section 2"),)
            ],),
          ],
        ),
      ),
    ); 
  }
}
