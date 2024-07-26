import 'package:flutter/material.dart';

class CardRightRow extends StatelessWidget {
  const CardRightRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 25.0,
          height: 25.0,
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xffA0E9FF),
            image: DecorationImage(
                image: AssetImage('assets/avatars/avatarImg1.png')),
          ),
        ),
        Container(
          height: 25,
          width: 25,
          decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: const Center(
            child: Text(
              'B1',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(width: 3),
        const Text(
          '₹450',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 3),
        const Text(
          '6m',
          style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 90, 89, 89),
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
