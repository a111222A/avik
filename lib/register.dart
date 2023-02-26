import 'package:acproject/widgets/NavDrawer.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  hintText: 'First Name',
                  labelText: 'First Name',
                  suffixStyle: const TextStyle(color: Colors.green)),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  hintText: 'Last Name',
                  labelText: 'Last Name',
                  suffixStyle: const TextStyle(color: Colors.green)),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  hintText: 'Email Id',
                  labelText: 'Email Id',
                  suffixStyle: const TextStyle(color: Colors.green)),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  hintText: 'Mobile No',
                  labelText: 'Mobile No',
                  suffixStyle: const TextStyle(color: Colors.green)),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              child: Text('Register'),
              style: TextButton.styleFrom(minimumSize: Size(90, 40)),
              onPressed: () {
                print("REGISTER click here");
              },
            ),
          ],
        ),
      ),
    );
  }
}
