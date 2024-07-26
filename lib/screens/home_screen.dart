import 'package:flutter/material.dart';
import 'package:qube_bidding/essentials/app_bar.dart';
import 'package:qube_bidding/essentials/card_style.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        persistentFooterButtons: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.black,
                ),
                label: const Text(
                  'Home',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.wallet,
                  size: 30,
                  color: Colors.black,
                ),
                label: const Text(
                  'Wallet',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ],
          )
        ],
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                SetAppbar(),
                SizedBox(height: 8),
                CardStyle(),
                CardStyle(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
