import 'package:clonenetflix/json/home_json.dart';
import 'package:flutter/material.dart';

import 'home/components/background.dart';
import 'home/components/fourth_header.dart';
import 'home/components/header.dart';
import 'home/components/header_second.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: getBody(),
    );
  }

  Widget getBody() {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            width: size.height - 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Background(size: size),
                const SizedBox(height: 20),
                const FourthHeader(),
                const SizedBox(height: 30),
                Column(
                  children: [
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Minha Lista',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 8),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children:
                                List.generate(minhaLista.length, ( index) {
                              return Container(
                                margin: const EdgeInsets.only(right: 8),
                                width: 100,
                                height: 150,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            // ignore: unnecessary_parenthesis
                                            (minhaLista[index]['img']) as String),
                                        fit: BoxFit.cover)),
                              );
                            }),
                          ),
                        )

                        // ignore: avoid_unnecessary_containers
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),

          // ignore: avoid_unnecessary_containers
          Container(
            child: SafeArea(
                child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Header(),
                const SizedBox(
                  height: 15,
                ),
                const HeaderSecond()
              ],
            )),
          )
        ],
      ),
    );
  }
}
