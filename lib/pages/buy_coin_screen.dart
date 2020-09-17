import 'package:flutter/material.dart';
import 'package:youtube_player/main_screen.dart';
import 'package:youtube_player/reusable_card.dart';
import 'package:youtube_player/reusable_coin.dart';

class BuyCoinScreen extends StatefulWidget {
  @override
  _BuyCoinScreenState createState() => _BuyCoinScreenState();
}

class _BuyCoinScreenState extends State<BuyCoinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Coins'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 8.0, bottom: 5.0),
            child: Row(
              children: [
                GestureDetector(
                  child: Text(
                    '48',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
                Text(
                  '\$',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ReusableCoin(
            coinsText: '3,500',
            priceText: '       \$1.99',
          ),
          ReusableCoin(
            coinsText: '25,000',
            priceText: '     \$2.99',
          ),
          ReusableCoin(
            coinsText: '60,000',
            priceText: '     \$8.99',
          ),
          ReusableCoin(
            coinsText: '100,00',
            priceText: '  \$10.99',
          ),
          ReusableCoin(
            coinsText: '150,000',
            priceText: '\$14.99',
          ),
          ReusableCoin(
            coinsText: '200,000',
            priceText: '\$16.99',
          ),
          ReusableCoin(
            coinsText: '1M',
            priceText: '\$75.99',
          ),
        ],
      ),
    );
  }
}
