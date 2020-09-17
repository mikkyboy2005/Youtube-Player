import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:youtube_player/pages/buy_coin_screen.dart';

// NavigationBar Screens...
import 'package:youtube_player/screens/campaign_screen.dart';
import 'package:youtube_player/screens/like_screen.dart';
import 'package:youtube_player/screens/subscribe_screen.dart';
import 'package:youtube_player/screens/view_screen.dart';

// MenuBar pages...
import 'package:youtube_player/pages/menu_bar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController;
  int coins = 48;
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          child: Text('YT Player'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BuyCoinScreen(),
              ),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 8.0, bottom: 5.0),
            child: Row(
              children: [
                GestureDetector(
                  child: Text(
                    '$coins',
                    style: TextStyle(fontSize: 23),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BuyCoinScreen(),
                      ),
                    );
                  },
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
      drawer: MenuBar(),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: [
          CampaignScreen(),
          SubscribeScreen(),
          ViewScreen(),
          LikeScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.grey,
        elevation: 20,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Campaign'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            title: Text('Subscribe'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            title: Text('View'),
          ),
          BottomNavigationBarItem(
            icon: Icon(MaterialCommunityIcons.thumb_up),
            title: Text('Like'),
          ),
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
