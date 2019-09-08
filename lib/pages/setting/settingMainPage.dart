import 'package:flutter/material.dart';

class SettingMainPage extends StatefulWidget {
  SettingMainPage({Key key}) : super(key: key);

  _SettingMainPageState createState() => _SettingMainPageState();
}

class _SettingMainPageState extends State<SettingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Card(
          child: Row(
            children: <Widget>[
              Container(
                  width: 80,
                  height: 80,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  )),
              Container(
                  height: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "陆金川",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text("已认证投资人",
                          style: TextStyle(
                              fontSize: 18, backgroundColor: Colors.blueGrey))
                    ],
                  ))
            ],
          ),
        ),
        Expanded(child:  SingleChildScrollView(child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.label),
              title: Text("我的标签"),
              trailing: Icon(Icons.navigate_next),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("领域偏好"),
              trailing: Icon(Icons.navigate_next),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("分享设置"),
              trailing: Icon(Icons.navigate_next),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("意见反馈"),
              trailing: Icon(Icons.navigate_next),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("关于我们"),
              trailing: Icon(Icons.navigate_next),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.clear),
              title: Text("清除记录"),
              trailing: Icon(Icons.navigate_next),
            ),
            Divider(),
          ],
        ),),)
       
        ,
        Row(children: <Widget>[
          Expanded(
            child: 
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: RaisedButton(
              child: Text("退出登陆",style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
              
              },
            ),)
            ,
          )
        ],)
      ],
    ));
  }
}
