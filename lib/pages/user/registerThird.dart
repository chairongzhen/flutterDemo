import 'package:flutter/material.dart';
import '../../ component/bottomTabs.dart';

class RegisterThirdPage extends StatefulWidget {
  RegisterThirdPage({Key key}) : super(key: key);
 
  _RegisterThirdPageState createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("i am register third"),),
      body: Column(children: <Widget>[
        Row(children: <Widget>[
          Text("i am register third page content")
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(height: 10,),
        Row(children: <Widget>[
          RaisedButton(child: Text("back"), onPressed: (){
            Navigator.of(context).pushAndRemoveUntil(
              new MaterialPageRoute(
                builder: (context) => new Tabs(index:1)
              ),
              (route) => route == null
            );
          },)
        ],mainAxisAlignment: MainAxisAlignment.center,)
      ],mainAxisAlignment: MainAxisAlignment.center),
    );
  }
}