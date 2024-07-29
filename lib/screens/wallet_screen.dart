import 'package:flutter/material.dart';
import 'package:qube_bidding/essentials/widgets.dart';
import 'package:qube_bidding/wallet-widgets/walletBalance.dart';
import 'package:qube_bidding/wallet-widgets/transactionHistory.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
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
      ),
    );
  }
}
