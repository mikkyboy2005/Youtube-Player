import 'package:flutter/material.dart';

class CampaignScreen extends StatefulWidget {
  @override
  _CampaignScreenState createState() => _CampaignScreenState();
}

class _CampaignScreenState extends State<CampaignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Campaign'),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 3.0,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
