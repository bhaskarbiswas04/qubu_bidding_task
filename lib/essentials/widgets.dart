import 'package:flutter/material.dart';

List<ImageProvider> images = const [
  AssetImage('assets/avatars/avatarImg1.png'),
  AssetImage('assets/avatars/avatarImg2.png'),
  AssetImage('assets/avatars/avatarImg3.png'),
  AssetImage('assets/avatars/avatarImg4.png'),
  AssetImage('assets/avatars/avatarImg5.png'),
  AssetImage('assets/avatars/avatarImg6.png'),
  AssetImage('assets/avatars/avatarImg7.png'),
  AssetImage('assets/avatars/avatarImg8.png'),
  AssetImage('assets/avatars/avatarImg9.png'),
  AssetImage('assets/avatars/avatarImg3.png'),
  AssetImage('assets/avatars/avatarImg6.png'),
  AssetImage('assets/avatars/avatarImg2.png'),

  // Image(image: AssetImage('assets/avatars/avatarImg1.png')),
  // Image(image: AssetImage('assets/avatars/avatarImg2.png')),
  // Image(image: AssetImage('assets/avatars/avatarImg3.png')),
  // Image(image: AssetImage('assets/avatars/avatarImg4.png')),
  // Image(image: AssetImage('assets/avatars/avatarImg5.png')),
  // Image(image: AssetImage('assets/avatars/avatarImg6.png')),
  // Image(image: AssetImage('assets/avatars/avatarImg7.png')),
  // Image(image: AssetImage('assets/avatars/avatarImg8.png')),
  // Image(image: AssetImage('assets/avatars/avatarImg9.png')),
  // Image(image: AssetImage('assets/avatars/avatarImg3.png')),
  // Image(image: AssetImage('assets/avatars/avatarImg6.png')),
  // Image(image: AssetImage('assets/avatars/avatarImg2.png')),
];

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
    required this.avatarImage,
  });

  final ImageProvider avatarImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 100.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(Radius.circular(35)),
        color: const Color(0xffA0E9FF),
        image: DecorationImage(image: avatarImage),
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
