import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qube_bidding/wallet-widgets/walletBalance.dart';

class PanelContentScreen extends StatelessWidget {
  PanelContentScreen({super.key});

  final TextEditingController bidAmountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [ContainWidget(), ContentWidget2()],
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: bidAmountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Enter Bid Price',
              hintStyle: TextStyle(fontSize: 20, color: Colors.black),
              prefixIcon: Icon(Icons.currency_rupee),
              filled: true,
              fillColor: Colors.white,
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 400,
            height: 50,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xffFFFFFF),
              Color.fromARGB(255, 161, 157, 157)
            ])),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  // backgroundColor: const Color.fromARGB(255, 216, 214, 214),
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )
                  // side: BorderSide(
                  //   color: Colors.black,
                  // ),
                  ),
              onPressed: () {
                final balanceModel = context.read<BalanceModel>();
                final currentBalance = balanceModel.balance;

                // Get bid amount from TextFormField
                final bidAmount =
                    double.tryParse(bidAmountController.text) ?? 0.0;

                // Check if bid amount is valid and sufficient
                if (bidAmount <= 0) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Color.fromARGB(255, 138, 127, 24),
                      content: Text('Please enter a valid bid amount.'),
                    ),
                  );
                  Navigator.pop(context);

                  return;
                } else if (bidAmount > currentBalance) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.red,
                      content: Text('Insufficient balance. Please add money.'),
                    ),
                  );
                  Navigator.pop(context);

                  return;
                }

                // Update balance in BalanceModel
                balanceModel.deductMoney(bidAmount); // Deduct bid amount

                // Show success message (assuming success after bid deduction)
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.green,
                    content: Text('Bid placed successfully!'),
                  ),
                );
                Navigator.pop(context);
              },
              child: const Text(
                "Bid",
                style: TextStyle(
                    fontSize: 22, color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContentWidget2 extends StatelessWidget {
  const ContentWidget2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Current Top Bid',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        Text(
          '₹500',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class ContainWidget extends StatelessWidget {
  const ContainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Bid to Enter              ',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'The bid amount will be blocked from',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          '   your Qube Wallet till the bidding ends.',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
