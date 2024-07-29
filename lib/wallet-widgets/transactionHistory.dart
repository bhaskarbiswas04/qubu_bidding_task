import 'package:flutter/material.dart';
import 'package:qube_bidding/wallet-widgets/depositedUi.dart';
import 'package:qube_bidding/wallet-widgets/BidPlacedUi.dart';
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
        // const BidPlacedUi(),
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
