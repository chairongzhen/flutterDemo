import 'package:flutter/material.dart';
import 'package:flutterdemo/routes/route.dart';
import './ component/bottomTabs.dart';
import './routes/route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tabs(),
      initialRoute: "/",
      onGenerateRoute: onGenerateRoute,
    );
  }
}





