import 'package:flutter/material.dart';

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
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: size.height - 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 480,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/banner_1.png'),
                              fit: BoxFit.cover)),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            child: SafeArea(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/logo.ico',
                            width: 35,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search_sharp,
                              size: 30,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/perfil.png',
                                      ),
                                      fit: BoxFit.cover)),
                            )),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Séries',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      'Filmes',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      'Minha Lista',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
