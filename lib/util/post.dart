// ignore_for_file: camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class post extends StatelessWidget {
  final String name;
  const post({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 400,
          color: Colors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 251, 251),
                              shape: BoxShape.circle),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Icon(Icons.menu)
                  ],
                ),
              ),
              Container(
                child: Center(
                  child: Image.asset(
                    "assets/images/post.png",
                    width: 500,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Icon(Icons.chat_bubble_outline),
                        ),
                        Icon(Icons.share),
                      ],
                    ),
                    Icon(Icons.bookmark)
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Text('liked by'),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        "Founder",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text("and"),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        "others",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 8),
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(
                            style: const TextStyle(color: Colors.black),
                            children: [
                          TextSpan(
                              text: name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          const TextSpan(text: '  awesome')
                        ])),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
