import 'package:capcar/pages/welcome.page.dart';
import 'package:capcar/themes/green.theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: greenTheme(),
      home: WelcomePage(),
    );
  }
}
