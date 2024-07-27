import 'package:flutter/material.dart';
import 'package:qube_bidding/essentials/widgets.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LogoAndName(),
              SizedBox(height: 20),
              WalletBalance(),
              SizedBox(height: 20),
              TransactionHistory(),
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Bids and Transactions                 ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        Row(
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 15),
        const Divider(
          height: 7,
          color: Color.fromARGB(255, 224, 222, 222),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            const SizedBox(width: 20),
            const Text(
              '💵',
              style: TextStyle(fontSize: 50),
            ),
            const SizedBox(width: 20),
            Column(
              children: [
                const Row(children: [
                  Text(
                    "Money Deposited                                   ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ]),
                const SizedBox(height: 7),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 209, 208, 208),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: const Text('Qube Bidding'),
                    ),
                    const SizedBox(width: 110),
                    const Text(
                      '₹10,000',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 15),
        const Divider(
          height: 7,
          color: Color.fromARGB(255, 224, 222, 222),
        ),
      ],
    );
  }
}
