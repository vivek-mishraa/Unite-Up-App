// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:unite_up/util/events.dart';
import 'package:unite_up/util/post.dart';

// ignore: camel_case_types
class page1 extends StatelessWidget {
  final List event = [
    "Hack For India",
    "Start Up Expo ",
    "Eureka",
    "SIH",
    "",
    "event 6 ",
    "event 7",
    "event 8",
    "event 9",
    "event 10"
  ];
  final List User = [
    "Dr. Manu Kumar",
    "BL Kumawat",
    "Rohit Kumar",
    "Mitesh Raj",
    "Dr. Manu Kumar",
    "Deno James",
    "Kaviraj Patil",
    "Raja Ram",
    "Caversky",
    "Becky",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.arrow_menu,
          children: [
            SpeedDialChild(child: const Icon(Icons.add), label: "add a post"),
            SpeedDialChild(
                child: const Icon(Icons.margin_outlined), label: "write a blog")
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 10,
          title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(1),
                  child: Padding(
                    padding: EdgeInsets.only(right: 0),
                    child: ClipRRect(),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(Icons.notifications_active),
                    ),
                  ],
                )
              ]),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 196,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: event.length,
                    itemBuilder: (context, index) {
                      return events(text: event[index]);
                    }),
              ),
              Flexible(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: event.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return post(
                        name: User[index],
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
