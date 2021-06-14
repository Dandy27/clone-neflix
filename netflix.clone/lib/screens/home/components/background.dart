import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 480,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/banner_1.png'),
                  fit: BoxFit.cover)),
        ),
        Container(
          height: 480,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.black.withOpacity(0.85),
            Colors.black.withOpacity(0.0)
          ], end: Alignment.topCenter, begin: Alignment.bottomCenter)),
        ),
        // ignore: sized_box_for_whitespace
        Container(
          height: 480,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/images/titulo_1.webp',
                width: 300,
              ),
              const SizedBox(
                height: 15,
              ),
              const ThirdHeard()
            ],
          ),
        )
      ],
    );
  }
}

class ThirdHeard extends StatelessWidget {
  const ThirdHeard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Esperto',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          Container(
              height: 3,
              width: 3,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  shape: BoxShape.circle)),
          const Text(
            'Irreverentes',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          Container(
              height: 3,
              width: 3,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  shape: BoxShape.circle)),
          const Text(
            'Empolgantes',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
