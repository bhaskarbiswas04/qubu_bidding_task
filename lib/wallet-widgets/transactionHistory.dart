import 'package:flutter/material.dart';
import 'package:qube_bidding/wallet-widgets/depositedUi.dart';
import 'package:qube_bidding/wallet-widgets/BidPlacedUi.dart';
import 'package:provider/provider.dart';
import 'package:qube_bidding/wallet-widgets/walletBalance.dart';

// enum TransactionType { Bid, Deposit }

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
        const SizedBox(height: 15),
        ListView.builder(
          shrinkWrap: true,
          // scrollDirection: Axis.vertical,
          physics: const ClampingScrollPhysics(),
          itemCount: balanceModel.transactions.length,
          reverse: true,
          itemBuilder: (context, index) {
            final transaction = balanceModel.transactions[index];
            return transaction.type == TransactionType.Bid
                ? BidPlacedUi(bid: Bids(transaction.amount))
                : DepositedUi(deposit: Deposit(transaction.amount));
          },
        ),
      ],
    );
  }
}
