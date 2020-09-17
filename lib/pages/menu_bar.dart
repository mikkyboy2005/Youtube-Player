import 'package:flutter/material.dart';
import 'package:youtube_player/models/menu_model.dart';

class MenuBar extends StatefulWidget {
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Michael Olusegun'),
            accountEmail: Text('michaelolusegun357@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://i.ibb.co/HGZhhvc/gamepad.jpg'),
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: menuData(context).length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: menuData(context)[i].onPress,
                  child: ListTile(
                    leading: Icon(menuData(context)[i].icon),
                    title: Text(menuData(context)[i].name),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

//UserAccountsDrawerHeader(
//accountName: Text('Michael Olusegun'),
//accountEmail: Text('michaelolusegun357@gmail.com'),
//currentAccountPicture: CircleAvatar(
//backgroundImage:
//NetworkImage('https://i.ibb.co/HGZhhvc/gamepad.jpg'),
//),
//),

//ListView.builder(
//itemCount: menuData.length,
//itemBuilder: (context, i) => Column(
//children: [
//ListTile(
//leading: Icon(menuData[i].icon),
//title: Text(menuData[i].name),
//),
//],
//),
//),

//Column(
//children: [
//UserAccountsDrawerHeader(
//accountName: Text('Michael Olusegun'),
//accountEmail: Text('michaelolusegun357@gmail.com'),
//currentAccountPicture: CircleAvatar(
//backgroundImage:
//NetworkImage('https://i.ibb.co/HGZhhvc/gamepad.jpg'),
//),
//),
//],
//),
