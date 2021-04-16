import 'package:flutter/material.dart';
import 'package:xibox_app/utils/constants.dart';

class MyXiboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.only(top: 30.0),
            elevation: 5.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                  margin: EdgeInsets.only(left: 15.0, bottom: 10.0),
                  child: Text(
                    'In transit',
                    style: TextStyle(color: kBlue80, fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Card(
            elevation: 5.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                  margin: EdgeInsets.only(left: 15.0, bottom: 10.0),
                  child: Text(
                    'Deposit',
                    style: TextStyle(color: kBlue80, fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
