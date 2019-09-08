import 'package:flutter/material.dart';

class RegisterFirstPage extends StatefulWidget {
  RegisterFirstPage({Key key}) : super(key: key);

  _RegisterFirstPageState createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("i am register first"),),
      body: Column(children: <Widget>[
        Row(children: <Widget>[
          Text("i am register first page")
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        ), 
        SizedBox(height: 10,),
        Row(children: <Widget>[
          RaisedButton(child: Text("next"), onPressed: (){
            Navigator.pushNamed(context, "/registerSecond");
          },)
        ],mainAxisAlignment: MainAxisAlignment.center,)
      ],mainAxisAlignment: MainAxisAlignment.center),
    );
  }
}