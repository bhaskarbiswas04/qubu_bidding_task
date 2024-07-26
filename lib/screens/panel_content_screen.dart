import 'package:flutter/material.dart';

class PanelContentScreen extends StatelessWidget {
  const PanelContentScreen({super.key});

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
              onPressed: () {},
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
