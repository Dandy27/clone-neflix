import 'package:clonenetflix/json/root_app_json.dart';
import 'package:clonenetflix/screens/home_screen.dart';
import 'package:flutter/material.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  late int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: getBody(),
      bottomNavigationBar: getBottomNavigationBar(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomeScreen(),
        Center(
          child: Text(
            'Em breve',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        Center(
          child: Text(
            'Downloads',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget getBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.10)),
      padding: const EdgeInsets.only(top: 10),
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                activeTab = index;
              });
            },
            child: Column(
              children: [
                Icon(
                  activeTab == index
                      ? items[index]["iconActive"] as IconData
                      : items[index]["icon"] as IconData,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  items[index]['titulo'] as String,
                  style: TextStyle(
                    color: activeTab == index
                        ? Colors.white
                        : Colors.white.withOpacity(0.5),
                    fontSize: 10,
                  ),
                ),
                const SizedBox(
                  width: 130,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
