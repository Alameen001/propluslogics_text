import 'package:flutter/material.dart';
import 'package:propluslogics_text/provider/screens_provider.dart';
import 'package:propluslogics_text/provider/togle_button.dart';
import 'package:propluslogics_text/view/screen_main.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider(create: (context) => TogleButtonprovider()),
          ChangeNotifierProvider(create: (context) => ScreenSprovider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Propluslogics Text',
        theme: ThemeData(
       
          primarySwatch: Colors.blue,
        ),
        home: ScreenManin(),
      ),
    );
  }
}
