// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

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
      bottomNavigationBar: Container(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: SizedBox(
                height: 60,
                // color: Colors.deepPurple,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: Colors.blue,
                        backgroundImage: AssetImage(
                          "lib/images/mann.jpg",
                        ),
                      ),
                      Container(
                          child: Row(
                        children: [
                          Icon(Icons.place),
                          SizedBox(
                            width: 2,
                          ),
                          Text("NY city, st 398"),
                        ],
                      )),
                      Image.asset("lib/images/icon.png")
                    ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 58,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(229, 229, 229, 1),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        size: 22.9,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Popular Categories",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 61,
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Container(
                            height: 61,
                            width: 158,
                            // color: Colors.deepPurple,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 41,
                                  width: 43,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.green,
                                  ),
                                  child: Image.asset(
                                    "lib/images/house.jpg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text("Hotels")
                              ],
                            ),
                          ),
                        );
                      }),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Top Shops",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                        Image.asset('lib/images/down.png')
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Explore",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 115, 116, 117),
                          ),
                        ),
                        Image.asset('lib/images/next.png')
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    width: 200,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
