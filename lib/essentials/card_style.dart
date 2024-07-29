import 'package:flutter/material.dart';
import 'package:qube_bidding/essentials/cardBottomStyle.dart';
import 'package:qube_bidding/essentials/cardTopStyle.dart';
import 'package:qube_bidding/screens/panel_content_screen.dart';

class CardStyle extends StatelessWidget {
  const CardStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => PanelContentScreen(),
                  );
                },
                child: Image.asset(
                  'assets/homeImage.png',
                ),
              )),
          const Column(
            //This is the main column
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardTopStyle(),
              SizedBox(
                height: 200,
              ),
              //bottom component of card.
              CardBottomStyle(),
            ],
          )
        ],
      ),
    );
  }
}
