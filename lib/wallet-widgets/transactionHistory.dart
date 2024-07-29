import 'package:flutter/material.dart';
import 'package:qube_bidding/wallet-widgets/depositedUi.dart';
import 'package:provider/provider.dart';
import 'package:qube_bidding/wallet-widgets/walletBalance.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    final balanceModel = context.watch<BalanceModel>();

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
        const Divider(height: 7, color: Color.fromARGB(255, 224, 222, 222)),
        const SizedBox(height: 15),
        ListView.builder(
          shrinkWrap: true,
          // scrollDirection: Axis.vertical,
          physics: const ClampingScrollPhysics(), // Prevent inner scroll
          itemCount: balanceModel.deposits.reversed.length,
          itemBuilder: (context, index) {
            final deposit = balanceModel.deposits.reversed.toList()[index];
            return DepositedUi(deposit: deposit);
          },
        ),
      ],
    );
  }
}
