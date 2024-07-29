import 'package:flutter/material.dart';
import 'package:qube_bidding/screens/wallet_screen.dart';
import 'package:qube_bidding/wallet-widgets/walletBalance.dart';
import 'package:provider/provider.dart';

class SetAppbar extends StatelessWidget {
  const SetAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final balanceModel = context.watch<BalanceModel>();

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
        Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                const Icon(
                  Icons.wallet,
                  size: 30,
                ),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WalletScreen()));
                  },
                  child: Text(
                    '₹${balanceModel.balance.toStringAsFixed(1)}',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
