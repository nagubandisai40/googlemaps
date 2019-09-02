import 'package:flutter/material.dart';
import 'package:maps/google.dart';
void main(){
  runApp(MaterialApp(home: MyApp(),));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: FlatButton(onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
              return CheckScreen();
            }));
          } ,child: Text("Open Maps"),),
        ),
    );
  }
}