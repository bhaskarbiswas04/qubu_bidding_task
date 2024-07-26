import 'package:flutter/material.dart';
import 'package:qube_bidding/essentials/cardRightRow.dart';

class CardBottomStyle extends StatelessWidget {
  const CardBottomStyle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Qube's Wool",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Text(
                "Women's Jacket Water",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              const Text(
                "Proof Full-Sleeved Winter...",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Container(
                height: 90,
                width: 215,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(100, 21, 21, 21),
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          SmallText(text: 'Top Bid'),
                          BigText(text: '₹500'),
                        ],
                      ),
                      SizedBox(width: 10),
                      VerticalDivider(
                        width: 2,
                        color: Color.fromARGB(150, 138, 138, 138),
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Row(
                            children: [
                              SmallText(text: 'Bid #2'),
                              SizedBox(width: 10),
                              BigText(text: '₹460')
                            ],
                          ),
                          Row(
                            children: [
                              SmallText(text: 'Bid #3'),
                              SizedBox(width: 10),
                              BigText(text: '₹420')
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const Column(
            children: [
              CardRightRow(),
              CardRightRow(),
              CardRightRow(),
              CardRightRow(),
            ],
          )
        ],
      ),
    );
  }
}

class BigText extends StatelessWidget {
  const BigText({
    super.key,
    required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 255, 255, 255)),
    );
  }
}

class SmallText extends StatelessWidget {
  const SmallText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 229, 221, 221)),
    );
  }
}
