import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:youtube_player/pages/buy_coin_screen.dart';

class MenuModel {
  final IconData icon;
  final String name;
  final Function onPress;

  MenuModel({
    @required this.icon,
    @required this.name,
    this.onPress,
  });
}

List<MenuModel> menuData(BuildContext context) => [
      MenuModel(
        icon: Icons.add_shopping_cart,
        name: 'Buy Coins',
        onPress: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BuyCoinScreen(),
            ),
          );
        },
      ),
      MenuModel(
        icon: FontAwesome.diamond,
        name: 'Premium Account',
      ),
      MenuModel(
        icon: Feather.dollar_sign,
        name: 'Watch Ads',
      ),
      MenuModel(
        icon: Icons.share,
        name: 'Invite Friends',
      ),
      MenuModel(
        icon: MaterialIcons.question_answer,
        name: 'Q & A',
      ),
      MenuModel(
        icon: Feather.star,
        name: 'Rate App',
      ),
      MenuModel(
        icon: MaterialIcons.feedback,
        name: 'Feedback',
      ),
      MenuModel(
        icon: MaterialCommunityIcons.license,
        name: 'Privacy Policy',
      ),
      MenuModel(
        icon: MaterialCommunityIcons.logout,
        name: 'Logout',
      ),
    ];
