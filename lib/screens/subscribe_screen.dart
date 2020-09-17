import 'package:flutter/material.dart';
import 'package:youtube_player/reusable_card.dart';

class SubscribeScreen extends StatefulWidget {
  @override
  _SubscribeScreenState createState() => _SubscribeScreenState();
}

class _SubscribeScreenState extends State<SubscribeScreen> {
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
                              'SUBSCRIBE and LIKE this channel after watching '
                              'the video to earn coins. Your account will be '
                              'permanently suspended if you UNSUBSCRIBE from the channel',
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
                                    'SUBSCRIBE',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                    print('SUBSCRIBE');
                                  },
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5.0)),
                                RaisedButton(
                                  color: Colors.redAccent,
                                  child: Text(
                                    'SEE OTHER',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                    print('SUBSCRIBE');
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
