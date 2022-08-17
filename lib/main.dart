import 'package:flutter/material.dart';
import 'package:propluslogics_text/view/screen_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Propluslogics Text',
      theme: ThemeData(
   
        primarySwatch: Colors.blue,
      ),
      home: ScreenManin(),
    );
  }
}
