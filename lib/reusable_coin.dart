import 'package:flutter/material.dart';

class ReusableCoin extends StatelessWidget {
  final String coinsText;
  final String priceText;
  final Function onPress;

  const ReusableCoin({this.coinsText, this.priceText, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Card(
        elevation: 3,
        margin: EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: ListTile(
            leading: Text(
              '$coinsText Coins',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Text(
                priceText,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
