// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class explore extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<explore> {
  final List<Map<String, dynamic>> _listItem = [
    {"image": 'assets/images/post2.jpg', "isSaved": false},
    {"image": 'assets/images/post3.png', "isSaved": false},
    {"image": 'assets/images/four.jpg', "isSaved": true},
    {"image": 'assets/images/five.jpg', "isSaved": true},
    {"image": 'assets/images/one.jpg', "isSaved": false},
    {"image": 'assets/images/two.jpg', "isSaved": false},
    {"image": 'assets/images/three.jpg', "isSaved": false},
    {"image": 'assets/images/four.jpg', "isSaved": false},
    {"image": 'assets/images/five.jpg', "isSaved": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: _listItem
                    .map((item) => Card(
                          color: Color.fromARGB(223, 249, 249, 249),
                          elevation: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/EX.png",
                                    ),
                                    fit: BoxFit.cover)),
                            child: Transform.translate(
                              offset: Offset(55, -58),
                              child: Container(
                                width: 30,
                                // height: 30,
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 190),
                                  child: Center(
                                    child: MaterialButton(
                                      onPressed: () {
                                        setState(() {
                                          item["isSaved"] = !item["isSaved"];
                                        });
                                      },
                                      color: Colors.white,
                                      height: 35,
                                      minWidth: 40,
                                      padding: EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Icon(
                                          item["isSaved"]
                                              ? Icons.bookmark
                                              : Icons.bookmark_border,
                                          size: 22,
                                          color: item["isSaved"]
                                              ? Colors.yellow[700]
                                              : Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              // child: InkWell(
                              //   onLongPress: () {},
                              //   child: Container(
                              //     margin: EdgeInsets.symmetric(horizontal:70, vertical: 71),
                              //     decoration: BoxDecoration(
                              //       borderRadius: BorderRadius.circular(8),
                              //       color: Colors.white
                              //     ),
                              //     child: Icon(Icons.bookmark_border, size: 22,),
                              //   ),
                              // ),
                            ),
                          ),
                        ))
                    .toList(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
