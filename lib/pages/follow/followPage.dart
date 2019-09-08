import 'package:flutter/material.dart';

class FollowPage extends StatefulWidget {
  FollowPage({Key key}) : super(key: key);

  _FollowPageState createState() => _FollowPageState();
}

class _FollowPageState extends State<FollowPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
            title: Text("公司ABC"),
            subtitle: Text("公司介绍公司介绍"),
            trailing: Row(
              children: <Widget>[
                Text("新产品", style: TextStyle(color: Colors.pinkAccent)),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.navigate_next,color: Colors.pinkAccent,)
              ],
              mainAxisSize: MainAxisSize.min,
            )),
        Divider(
          height: 1,
          color: Colors.lightGreen,
        ),
        ListTile(
            title: Text("公司ABC"),
            subtitle: Text("公司介绍公司介绍"),
            trailing: Icon(
              Icons.navigate_next,
              color: Colors.pink,
            )),
        Divider(
          height: 1,
          color: Colors.lightGreen,
        ),
        ListTile(
            title: Text("公司ABC"),
            subtitle: Text("公司介绍公司介绍"),
            trailing: Icon(
              Icons.navigate_next,
              color: Colors.pink,
            )),
        Divider(
          height: 1,
          color: Colors.lightGreen,
        ),
        ListTile(
            title: Text("公司ABC"),
            subtitle: Text("公司介绍公司介绍"),
            trailing: Row(
              children: <Widget>[
                Text("融资", style: TextStyle(color: Colors.pinkAccent)),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.navigate_next,color: Colors.pinkAccent,)
              ],
              mainAxisSize: MainAxisSize.min,
            )),
        Divider(
          height: 1,
          color: Colors.lightGreen,
        ),
        ListTile(
            title: Text("公司ABC"),
            subtitle: Text("公司介绍公司介绍"),
            trailing: Icon(
              Icons.navigate_next,
              color: Colors.pink,
            )),
        Divider(
          height: 1,
          color: Colors.lightGreen,
        ),
        ListTile(
            title: Text("公司ABC"),
            subtitle: Text("公司介绍公司介绍"),
            trailing: Row(
              children: <Widget>[
                Text("意向", style: TextStyle(color: Colors.pinkAccent)),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.navigate_next,color: Colors.pinkAccent,)
              ],
              mainAxisSize: MainAxisSize.min,
            )),
        Divider(
          height: 1,
          color: Colors.lightGreen,
        ),
      ],
    );
    // return  ListView(
    //   children: <Widget>[
    //     ListTile(
    //         title: Text("公司ABC"),
    //         subtitle: Text("公司介绍公司介绍"),
    //         trailing: Row(
    //           children: <Widget>[
    //             Container(
    //               width: 50,
    //               child: Text("新产品"),
    //             ),
    //             SizedBox(
    //               width: 10,
    //             ),
    //             Icon(Icons.navigate_next)
    //           ],
    //         )),
    //     ListTile(
    //         title: Text("公司ABC"),
    //         subtitle: Text("公司介绍公司介绍"),
    //         trailing: Row(
    //           children: <Widget>[
    //             Container(
    //               width: 50,
    //               child: Text("新产品"),
    //             ),
    //             SizedBox(
    //               width: 10,
    //             ),
    //             Icon(Icons.navigate_next)
    //           ],
    //         )),
    //     ListTile(
    //         title: Text("公司ABC"),
    //         subtitle: Text("公司介绍公司介绍"),
    //         trailing: Row(
    //           children: <Widget>[
    //             Container(
    //               width: 50,
    //               child: Text("新产品"),
    //             ),
    //             SizedBox(
    //               width: 10,
    //             ),
    //             Icon(Icons.navigate_next)
    //           ],
    //         )),
    //     ListTile(
    //         title: Text("公司ABC"),
    //         subtitle: Text("公司介绍公司介绍"),
    //         trailing: Row(
    //           children: <Widget>[
    //             Container(
    //               width: 50,
    //               child: Text("新产品"),
    //             ),
    //             SizedBox(
    //               width: 10,
    //             ),
    //             Icon(Icons.navigate_next)
    //           ],
    //         )),
    //     ListTile(
    //         title: Text("公司ABC"),
    //         subtitle: Text("公司介绍公司介绍"),
    //         trailing: Row(
    //           children: <Widget>[
    //             Container(
    //               width: 50,
    //               child: Text("新产品"),
    //             ),
    //             SizedBox(
    //               width: 10,
    //             ),
    //             Icon(Icons.navigate_next)
    //           ],
    //         )),
    //     ListTile(
    //         title: Text("公司ABC"),
    //         subtitle: Text("公司介绍公司介绍"),
    //         trailing: Row(
    //           children: <Widget>[
    //             Container(
    //               width: 50,
    //               child: Text("新产品"),
    //             ),
    //             SizedBox(
    //               width: 10,
    //             ),
    //             Icon(Icons.navigate_next)
    //           ],
    //         )),
    //   ],
    // );
  }
}
