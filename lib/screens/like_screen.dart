import 'package:flutter/material.dart';

import '../reusable_card.dart';

class LikeScreen extends StatefulWidget {
  @override
  _LikeScreenState createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: ReusableCard(
              onPress: () => print('Play Video'),
              colour: Colors.redAccent,
            ),
          ),
          Container(
            child: Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () => print('OK'),
                      colour: Colors.white,
                      cardChild: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 10),
                            child: Text(
                              'Click the LIKE button to watch the video on YT.'
                              'LIKE the video and return to this app. The Google account logged in to this app must be the same as the one logged in to your YT app.',
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RaisedButton(
                                  color: Colors.redAccent,
                                  child: Text(
                                    'LIKE',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                    print('LIKE');
                                  },
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.0),
                                ),
                                RaisedButton(
                                  color: Colors.redAccent,
                                  child: Text(
                                    'NEXT',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                    print('NEXT');
                                  },
                                ),
                              ],
                            ),
                          )
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
    );
  }
}
