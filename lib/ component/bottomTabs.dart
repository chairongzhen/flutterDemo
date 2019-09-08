

import 'package:flutter/material.dart';
import '../pages/follow/followMainPage.dart';
import '../pages/setting/settingMainPage.dart';
import '../pages/find/findMainPage.dart';

class Tabs extends StatefulWidget {
  final index;

  Tabs({Key key,this.index=0}) : super(key: key);

  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex;

  _TabsState(index) {
    this._currentIndex = index;
  }  

  List _pageList = [
    FindMainPage(),
    FollowMainPage(),
    SettingMainPage()
  ];

  List _pageTitleList = [
    "获客",
    "关注",
    "我的"
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this._pageTitleList[this._currentIndex])),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        iconSize: 30,
        fixedColor: Colors.red,
        onTap: (index) {
          setState(() {
            this._currentIndex = index;
          }); 
        },
        items: [ 
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            title: Text("获客")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.center_focus_strong),
            title: Text("关注")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Text("我的")
          ) 
        ]
      ),
    );
  }
}