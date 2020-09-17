import 'package:flutter/material.dart';
import 'package:youtube_player/reusable_card.dart';

class ViewScreen extends StatefulWidget {
  @override
  _ViewScreenState createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  int coins = 48;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: ReusableCard(colour: Colors.redAccent),
            ),
          ),
          Container(
            child: Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.transparent,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '48',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            'coins',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.black45,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RaisedButton(
                                color: Colors.redAccent,
                                child: Text(
                                  'View on YT',
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.redAccent,
                    thickness: 1.2,
                    endIndent: 100,
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.transparent,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '59',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            'seconds',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.black45,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RaisedButton(
                                color: Colors.redAccent,
                                child: Text(
                                  'SEE OTHER',
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
//      bottomNavigationBar: BottomNavigationBar(
//        selectedItemColor: Colors.red,
//        unselectedItemColor: Colors.grey,
//        currentIndex: 1,
//        items: [
//          BottomNavigationBarItem(
//            icon: Icon(Icons.home),
//            title: Text('Home'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.video_library),
//            title: Text('Home'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.play_arrow),
//            title: Text('Home'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Feather.thumbs_up),
//            title: Text('Home'),
//          ),
//        ],
//      ),
    );
  }
}
