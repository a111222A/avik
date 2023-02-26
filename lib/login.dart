import 'package:acproject/home.dart';
import 'package:acproject/homepage.dart';
import 'package:acproject/login.dart';
import 'package:acproject/register.dart';
import 'package:acproject/routes.dart';
import 'package:acproject/widgets/NavDrawer.dart';
import 'package:flutter/material.dart';

enum UserType { customer, technician }
class Login extends StatelessWidget {
  UserType? user = UserType.customer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('JOYTI AC'),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Image.asset("assets/ac_image.jpg", fit: BoxFit.cover),
            RadioListTile<UserType>(
              title: const Text('Customer'),
              value: UserType.customer,
              groupValue: user,
              onChanged: (UserType? value) {
                print("value is  Customer");
              },
            ),
            RadioListTile<UserType>(
              title: const Text('Technician'),
              value: UserType.technician,
              groupValue: user,
              onChanged: (UserType? value) {
                print("value is22222Technician ");
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  hintText: 'Enter You Mobile Number',
                  labelText: 'Mobile No',
                  suffixStyle: const TextStyle(color: Colors.green)),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              child: Text('Login'),
              style: TextButton.styleFrom(minimumSize: Size(90, 40)),
              onPressed: () {
                print("Login click here");
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
            ),

            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.registerRoute);
                  },
                ),
              ],
            )

          ],
        ),
      ),

    );
  }
}
