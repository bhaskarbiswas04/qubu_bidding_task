import 'package:flutter/material.dart';
// import 'package:qube_bidding/wallet-widgets/walletBalance.dart';
// import 'package:provider/provider.dart';

class Deposit {
  final double amount;
  Deposit(this.amount);
}

class DepositedUi extends StatelessWidget {
  const DepositedUi({super.key, required this.deposit});

  final Deposit deposit;

  @override
  Widget build(BuildContext context) {
    // final balanceModel = context.watch<BalanceModel>();
    return Row(
      children: [
        const SizedBox(width: 20),
        const Text(
          '💵',
          style: TextStyle(fontSize: 50),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            children: [
              const Text(
                "Money Deposited                                          ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
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
                  Text(
                    '₹${deposit.amount.toStringAsFixed(1)}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Divider(
                height: 7,
                color: Color.fromARGB(255, 224, 222, 222),
              ),
            ],
          ),
        )
      ],
    );
  }
}
