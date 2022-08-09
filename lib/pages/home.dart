// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Text("v"),
                  radius: 16,
                ),
                Container(
                  child: Row(
                    children: [
                      Text("kk 172 t"),
                    ],
                  ),
                ),
                Image.asset('lib/images/user.jpg')
              ],
            )
          ],
        ),
      ),
    );
  }
}
