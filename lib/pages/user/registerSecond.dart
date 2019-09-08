import 'package:flutter/material.dart';

class RegisterSecondPage extends StatefulWidget {
  RegisterSecondPage({Key key}) : super(key: key);

  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("i am register second"),),
      body: Column(children: <Widget>[
        Row(children: <Widget>[
          Text("i am register second page")
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        ), 
        SizedBox(height: 10,),
        Row(children: <Widget>[
          RaisedButton(child: Text("next"), onPressed: (){
             Navigator.pushNamed(context, "/registerThird");
          },)
        ],mainAxisAlignment: MainAxisAlignment.center,)
      ],mainAxisAlignment: MainAxisAlignment.center),
    );
  }
}