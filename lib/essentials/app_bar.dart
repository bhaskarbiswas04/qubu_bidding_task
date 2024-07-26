import 'package:flutter/material.dart';

class SetAppbar extends StatelessWidget {
  const SetAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
        ),
        const Card(
          elevation: 3,
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Icon(
                  Icons.wallet,
                  size: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '₹10,000',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
