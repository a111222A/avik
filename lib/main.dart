
import 'package:acproject/home.dart';
import 'package:acproject/homepage.dart';
import 'package:acproject/login.dart';
import 'package:acproject/register.dart';
import 'package:acproject/routes.dart';
import 'package:acproject/widgets/NavDrawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'Ac project';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      initialRoute: '/',
      routes: {
        "/":(context)=>Login(),
        MyRoutes.loginRoute:(context)=>Login(),
        MyRoutes.registerRoute:(context)=>Register(),
        MyRoutes.homeRoute:(context)=>HomePage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

    );
  }
}
