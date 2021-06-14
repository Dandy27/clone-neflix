import 'package:flutter/material.dart';

class HeaderSecond extends StatelessWidget {
  const HeaderSecond({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
         const Text(
          'Séries',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
        ),
        const Text(
          'Filmes',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
        ),
        const Text(
          'Minha Lista',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
