import 'package:flutter/material.dart';

class FindMainPage extends StatefulWidget {
  FindMainPage({Key key}) : super(key: key);

  _FindMainPageState createState() => _FindMainPageState();
}

class _FindMainPageState extends State<FindMainPage> {
  @override
  Widget build(BuildContext context) {
return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Card( 
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 25 / 9,
                    child: Image.network(
                        "https://www.itying.com/images/flutter/1.png",
                        fit: BoxFit.cover),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Text("[专题]长江流域的智能制造企业",
                  style: TextStyle(fontSize: 15, color: Colors.white)),
              bottom: 10,
              right: 20,
            )
          ],
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "输入企业/产品/标签来找客户",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 1)))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Image.network(
                              "https://www.itying.com/images/flutter/2.png",
                              fit: BoxFit.cover,
                              width: 80,
                              height: 80,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("投资项目")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Image.network(
                              "https://www.itying.com/images/flutter/3.png",
                              fit: BoxFit.cover,
                              width: 80,
                              height: 80,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("企业获客")
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Image.network(
                              "https://www.itying.com/images/flutter/4.png",
                              fit: BoxFit.cover,
                              width: 80,
                              height: 80,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("政府招商")
                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Column(children: <Widget>[
                ListTile(
                  title: Text("公司ABC"),
                  subtitle: Text("公司介绍产品介绍标签介绍"),
                  trailing: Icon(Icons.navigate_next,color: Colors.pink,),
                ),
                Divider(height:1, color: Colors.lightGreen,),
                ListTile(
                  title: Text("公司ABC"),
                  subtitle: Text("公司介绍产品介绍标签介绍"),
                  trailing: Icon(Icons.navigate_next,color: Colors.pink,),
                ),
                Divider(height:1, color: Colors.lightGreen,),
                ListTile(
                  title: Text("公司ABC"),
                  subtitle: Text("公司介绍产品介绍标签介绍"),
                  trailing: Icon(Icons.navigate_next,color: Colors.pink,),
                ),
                Divider(height:1, color: Colors.lightGreen,),
                ListTile(
                  title: Text("公司ABC"),
                  subtitle: Text("公司介绍产品介绍标签介绍"),
                  trailing: Icon(Icons.navigate_next,color: Colors.pink,),
                ),
                Divider(height:1, color: Colors.lightGreen,),
                ListTile(
                  title: Text("公司ABC"),
                  subtitle: Text("公司介绍产品介绍标签介绍"),
                  trailing: Icon(Icons.navigate_next,color: Colors.pink,),
                ),
                
              ],)
            ],
          ),
        )
      ],
    );
  }
}