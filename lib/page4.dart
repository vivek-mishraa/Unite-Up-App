// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class page4 extends StatelessWidget {
  const page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
          child: Column(
        children: [
          headerChat(),
          bodyChat(),
        ],
      )),
    );
  }

  headerChat() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.white10,
              ),
              Text(
                "Chat",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(
                  10,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black),
                child: const Icon(
                  Icons.call,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                padding: const EdgeInsets.all(
                  10,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black),
                child: const Icon(
                  Icons.video_call,
                  size: 25,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  bodyChat() {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          color: Colors.white),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: SizedBox(
                width: 100,
                child: Text(
                  "Hello How Are You",
                  style: TextStyle(
                    fontSize: 20,
                    backgroundColor: Colors.lightGreen,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 250),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: SizedBox(
                width: 50,
                child: Text(
                  "I am Fine",
                  style: TextStyle(
                    fontSize: 20,
                    backgroundColor: Colors.lightGreen,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: SizedBox(
                width: 50,
                child: Text(
                  "How Can I Help You",
                  style: TextStyle(
                    fontSize: 20,
                    backgroundColor: Colors.lightGreen,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 250),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: SizedBox(
                width: 100,
                child: Text(
                  "I Need......",
                  style: TextStyle(
                    fontSize: 20,
                    backgroundColor: Colors.lightGreen,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
