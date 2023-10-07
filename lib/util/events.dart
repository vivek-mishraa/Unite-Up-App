// ignore_for_file: camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class events extends StatelessWidget {
  final String text;
  const events({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/post.png",
                  width: 200,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(text),
            ],
          )
        ],
      ),
    );
  }
}
