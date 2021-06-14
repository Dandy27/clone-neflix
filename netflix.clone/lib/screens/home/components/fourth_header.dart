import 'package:flutter/material.dart';

class FourthHeader extends StatelessWidget {
  const FourthHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Icon(
              Icons.info_outline,
              size: 30,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Text('Minha Lista',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.85),
                    fontSize: 10,
                    fontWeight: FontWeight.bold))
          ],
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(4)),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 13, top: 2, bottom: 2),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                  size: 30,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Assistir',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ),
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Icon(
              Icons.add,
              size: 30,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Text('Saiba Mais ',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.85),
                    fontSize: 10,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ],
    );
  }
}
