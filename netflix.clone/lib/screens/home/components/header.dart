import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                icon: const Icon(
                  Icons.search_sharp,
                  size: 30,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/perfil.png',
                          ),
                          fit: BoxFit.cover)),
                )),
          ],
        ),
      ],
    );
  }
}
