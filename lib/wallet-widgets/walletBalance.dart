import 'package:flutter/material.dart';
import 'package:qube_bidding/wallet-widgets/depositedUi.dart';
import 'package:provider/provider.dart';

class BalanceModel extends ChangeNotifier {
  double _balance = 0.0;
  final List<Deposit> _deposits = [];

  double get balance => _balance;
  List<Deposit> get deposits => _deposits;

  void addMoney(double amount) {
    _balance += amount;
    _deposits.add(Deposit(amount));
    notifyListeners();
  }
}

class WalletBalance extends StatefulWidget {
  const WalletBalance({
    super.key,
  });

  @override
  State<WalletBalance> createState() => _WalletBalanceState();
}

class _WalletBalanceState extends State<WalletBalance> {
  // double balance = 0;
  final _amountController = TextEditingController();

  // DepositedUi? depositedUi;

  void _showAddMoneyDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add Money'),
          content: TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(hintText: 'Enter amount'),
          ),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Add'),
              onPressed: () {
                double newAmount =
                    double.tryParse(_amountController.text) ?? 0.0;
                context.read<BalanceModel>().addMoney(newAmount);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final balanceModel = context.watch<BalanceModel>();

    return Container(
      padding: const EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color.fromARGB(255, 187, 185, 185)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Wallet Balance',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              Text(
                '₹${balanceModel.balance.toStringAsFixed(1)}',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          ElevatedButton.icon(
              onPressed: _showAddMoneyDialog,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              icon: const Icon(
                Icons.add_circle,
                color: Colors.white,
                size: 30,
              ),
              label: const Text(
                'Add Money',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}
