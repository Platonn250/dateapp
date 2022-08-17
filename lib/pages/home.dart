// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:dateapp/screens/chats.dart';
import 'package:dateapp/screens/homescreen.dart';
import 'package:dateapp/screens/notifications.dart';
import 'package:dateapp/screens/order.dart';
import 'package:dateapp/screens/profile.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;

  final screens = [
    HomeScreen(),
    NotificationsScreen(),
    ChatScreen(),
    OrderScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: BottomAppBar(
          child: Container(
            color: Color.fromRGBO(249, 249, 249, 1),
            child: SizedBox(
              height: 121,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 63,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButtonBar(
                          icon: Icons.home,
                          onPressed: () {
                            setState(() {
                              selectedIndex = 0;
                            });
                          },
                          selected: selectedIndex == 0,
                          text: 'Home',
                        ),
                        IconButtonBar(
                          icon: Icons.notifications,
                          onPressed: () {
                            setState(() {
                              selectedIndex = 1;
                            });
                          },
                          selected: selectedIndex == 1,
                          text: 'Home',
                        ),
                        IconButtonBar(
                          icon: Icons.message,
                          onPressed: () {
                            setState(() {
                              selectedIndex = 2;
                            });
                          },
                          selected: selectedIndex == 2,
                          text: 'Home',
                        ),
                        IconButtonBar(
                          icon: Icons.document_scanner,
                          onPressed: () {
                            setState(() {
                              selectedIndex = 3;
                            });
                          },
                          selected: selectedIndex == 3,
                          text: 'Home',
                        ),
                        IconButtonBar(
                          icon: Icons.person,
                          onPressed: () {
                            setState(() {
                              selectedIndex = 4;
                            });
                          },
                          selected: selectedIndex == 4,
                          text: 'Home',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class MyBottomAppBar extends StatefulWidget {
//   const MyBottomAppBar({Key? key}) : super(key: key);

//   @override
//   State<MyBottomAppBar> createState() => _MyBottomAppBarState();
// }

// class _MyBottomAppBarState extends State<MyBottomAppBar> {

//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

class IconButtonBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool selected;
  final VoidCallback onPressed;
  const IconButtonBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? Colors.deepPurple : Colors.red,
          ),
          // color: selected ? Colors.white : Colors.deepPurple,
        ),
        // Text(
        //   text,
        //   style: TextStyle(
        //     fontSize: 12,
        //     height: .1,
        //     color: selected ? Colors.deepPurple : Colors.red,
        //   ),
        // )
      ],
    );
  }
}
