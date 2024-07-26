import 'package:flutter/material.dart';
import 'package:qube_bidding/essentials/app_bar.dart';
import 'package:qube_bidding/essentials/card_style.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:qube_bidding/essentials/widgets.dart';
import 'package:qube_bidding/screens/wallet_screen.dart';

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
              EleButton(icon: Icons.home, text: 'Home', onTap: () {}),
              EleButton(
                  icon: Icons.wallet,
                  text: 'Wallet',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WalletScreen(),
                      ),
                    );
                  }),
            ],
          )
        ],
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                const SetAppbar(),
                const SizedBox(height: 8),
                FlutterCarousel(
                  items: const [
                    CardStyle(),
                    CardStyle(),
                    CardStyle(),
                    CardStyle()
                  ],
                  options: CarouselOptions(
                    height: 490,
                    viewportFraction: 1.0,
                    autoPlay: true,
                    floatingIndicator: true,
                    enableInfiniteScroll: true,
                    autoPlayInterval: const Duration(seconds: 9),
                    slideIndicator: CircularWaveSlideIndicator(),
                  ),
                ),
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
