import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("i am login"),),
      body: Column(children: <Widget>[
        Row(children: <Widget>[
          Text("i am login page content")
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(height: 10,),
        Row(children: <Widget>[
          RaisedButton(child: Text("login"), onPressed: (){
            Navigator.of(context).pop();
          },)
        ],mainAxisAlignment: MainAxisAlignment.center,)
      ],mainAxisAlignment: MainAxisAlignment.center),
    );
  }
}