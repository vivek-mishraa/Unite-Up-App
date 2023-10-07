// ignore_for_file: camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';

class page5 extends StatelessWidget {
  const page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .4,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(
                              MediaQuery.of(context).size.width * 0.5, 100.0),
                          bottomRight: Radius.elliptical(
                              MediaQuery.of(context).size.width * 0.5, 100.0),
                        ),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.prismic.io/moberries/0a75482c-9013-4edb-ae9c-f1da43f4f623_tesla-station.jpg?auto=compress%2Cformat&rect=51%2C0%2C1816%2C1419&w=1024&h=800'),
                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topCenter,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Icon(
                            Icons.close,
                            color: Color(0xffC3C3C3),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              'Tesla',
                              style: TextStyle(
                                color: Color(0xffBDBDBD),
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xffD8D8D8),
                          child: Icon(
                            Icons.chat,
                            size: 30,
                            color: Color(0xff6E6E6E),
                          ),
                        ),
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(
                            'data:image/jpeg;base64,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',
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xffD8D8D8),
                          child: Icon(
                            Icons.call,
                            size: 30,
                            color: Color(0xff6E6E6E),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                Text(
                  " Descripton",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const Text(
                "Tesla is an American multinational automotive and clean energy company headquartered in Austin, Texas, which designs and manufactures electric vehicles, stationary battery energy storage devices from home to grid-scale, solar panels and solar shingles, and related products and services."),
            const Text(
              " Achievement",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
                "Tesla developed the alternating-current power system that provides electricity for homes and buildings. He also pioneered the field of radio communication and was granted more than 100 U.S. patents"),
            /* const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.all(50),
              child: Text(
                'Automative',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                '|',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                'Vehicles',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                '|',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                'Bio-Weapon_Defence_Model',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                '|',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: Text(
                'SpaceX',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),*/
          ]),
    ));
  }
}
