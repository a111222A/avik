import 'package:acproject/widgets/NavDrawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: const Text('Customer Home'),
        ),

      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.lightBlueAccent,
            child: const Text("Today Job",textAlign: TextAlign.center),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.lightBlueAccent,
            child: const Text('Pending Job'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.lightBlueAccent,
            child: const Text('Complete Job'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.lightBlueAccent,
            child: const Text('Cancel Job'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.lightBlueAccent,
            child: const Text('Add Job'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.lightBlueAccent,
            child: const Text('Track Job'),
          ),
        ],
      )

      );
  }
}