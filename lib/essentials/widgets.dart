import 'package:flutter/material.dart';

//widget for ElevatedButton
class EleButton extends StatelessWidget {
  const EleButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  final IconData icon;
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: Icon(
        icon,
        size: 30,
        color: Colors.black,
      ),
      label: Text(
        text,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}

// Widget to set Avatar to Grid in user_screen
class GridAvatar extends StatelessWidget {
  const GridAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 100.0,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(35)),
        color: Color(0xffA0E9FF),
        image:
            DecorationImage(image: AssetImage('assets/avatars/avatarImg2.png')),
      ),
    );
  }
}

class LogoAndName extends StatelessWidget {
  const LogoAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/qubeLogo.png',
          height: 60,
          width: 60,
        ),
        const Text(
          'Qube Bidding',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
