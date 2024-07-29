import 'package:flutter/material.dart';

class Bids {
  final double bidAmount;
  Bids(this.bidAmount);
}

class BidPlacedUi extends StatelessWidget {
  const BidPlacedUi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40), // Image border
          child: SizedBox.fromSize(
            size: const Size.fromRadius(50), // Image radius
            child: Image.asset('assets/homeImage.png'),
          ),
        ),
        Column(
          children: [
            const Row(children: [
              Text(
                "Qube's Wool                                ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              Text(
                '1m ago',
                style: TextStyle(fontWeight: FontWeight.w700),
              )
            ]),
            const SizedBox(
              width: 260,
              child: Text(
                "Women's Jacket Water Proof Full-Sleeved Winter Jacket with Hood For Minus Degree",
                style: TextStyle(fontSize: 12),
              ),
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 209, 208, 208),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Text('Bid #2'),
                ),
                const SizedBox(width: 160),
                const Text(
                  '-₹545',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
