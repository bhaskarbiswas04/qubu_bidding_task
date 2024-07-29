import 'package:flutter/material.dart';
import 'package:qube_bidding/screens/splash_screen.dart';
import 'package:qube_bidding/screens/wallet_screen.dart';
import 'package:provider/provider.dart';
import 'package:qube_bidding/wallet-widgets/walletBalance.dart';

void main() {
  return runApp(
    ChangeNotifierProvider(
      create: (context) => BalanceModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WalletScreen(),
    );
  }
}
