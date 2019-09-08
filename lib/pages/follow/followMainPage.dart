import 'package:flutter/material.dart';
import './followPage.dart';
import './recommendPage.dart';
import './infomationPage.dart';

class FollowMainPage extends StatefulWidget {
  FollowMainPage({Key key}) : super(key: key);

  _FollowMainPageState createState() => _FollowMainPageState();
}

class _FollowMainPageState extends State<FollowMainPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(
      (){
        print(_tabController.index);
      }
    );  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: <Widget>[
          Expanded(
              child: TabBar(
            tabs: <Widget>[
              Tab(
                text: "关注",
              ),
              Tab(
                text: "推荐",
              ),
              Tab(
                text: "情报",
              )
            ],
            controller: _tabController,
            indicatorColor: Colors.orangeAccent,
            labelColor: Colors.orangeAccent,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
          ))
        ],
      )),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[FollowPage(), RecommendPage(), InformationPage()],
      ),
    );
  }
}
