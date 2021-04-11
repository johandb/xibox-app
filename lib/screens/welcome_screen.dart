import 'package:flutter/material.dart';
import 'package:xibox_app/components/xibox_button.dart';
import 'package:xibox_app/utils/constants.dart';

import 'login_screen.dart';
import 'registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/xibox.png'),
                    height: 100.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100.0,
            ),
            XiBoxButton(
              title: 'Login in',
              colour: kBlue80,
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            XiBoxButton(
              title: 'Sign-up',
              colour: kBlue80,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
