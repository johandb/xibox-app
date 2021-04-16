import 'package:flutter/material.dart';
import 'package:flutter_titled_container/flutter_titled_container.dart';
import 'package:sprintf/sprintf.dart';
import 'package:xibox_app/components/xibox_button.dart';
import 'package:xibox_app/utils/constants.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.only(top: 30.0, bottom: 20.0),
            elevation: 5.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                  margin: EdgeInsets.only(left: 15.0, bottom: 10.0),
                  child: Text(
                    'Finance',
                    style: TextStyle(color: kBlue80, fontSize: 18.0),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Money(title: 'Account balance', amount: 32.50),
                    SizedBox(
                      width: 10.0,
                    ),
                    Money(title: 'Deposit', amount: 5.50),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                XiBoxButton(
                  title: 'Add funds',
                  colour: kBlue80,
                  onPressed: () {
                    print('Funds pressed');
                  },
                ),
                XiBoxButton(
                  title: 'Link bank account',
                  colour: kBlue80,
                  onPressed: () {
                    print('Link pressed');
                  },
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                  margin: EdgeInsets.only(left: 15.0, bottom: 10.0),
                  child: Text(
                    'Personal',
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

class Money extends StatelessWidget {
  Money({this.title, this.amount});

  final double amount;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TitledContainer(
      title: title,
      titleColor: kBlue80,
      fontSize: 12.0,
      child: Container(
        width: 150.0,
        padding: EdgeInsets.only(top: 5.0),
        decoration: BoxDecoration(
          border: Border.all(color: kBlue80),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Center(
          child: Text(
            sprintf('%s%5.2f', [kEuro, amount]),
            style: TextStyle(fontSize: 32.0),
          ),
        ),
      ),
    );
  }
}
