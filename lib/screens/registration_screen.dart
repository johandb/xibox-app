import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:xibox_app/components/xibox_button.dart';
import 'package:xibox_app/utils/constants.dart';

import 'home_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool showSpinner = false;
  String username;
  String password;

  var hintColorLogin = kBlack60;
  var labelColorLogin = kBlack60;
  var hintColorPwd = kBlack60;
  var labelColorPwd = kBlack60;

  bool checkInput() {
    if (username == null || password == null || username.isEmpty || password.isEmpty) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: Container(
                    height: 100.0,
                    child: Image.asset('images/xibox-logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 38.0,
              ),
              Focus(
                onFocusChange: (hasFocus) {
                  setState(() {
                    hintColorLogin = hasFocus ? kBlack60 : kBlack60;
                    labelColorLogin = hasFocus ? kGreen : kBlack60;
                  });
                },
                child: TextField(
                  keyboardType: TextInputType.name,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    username = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your username',
                    labelText: 'Username',
                    hintStyle: TextStyle(color: hintColorLogin),
                    labelStyle: TextStyle(color: labelColorLogin),
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Focus(
                onFocusChange: (hasFocus) {
                  setState(() {
                    hintColorPwd = hasFocus ? kBlack60 : kBlack60;
                    labelColorPwd = hasFocus ? kGreen : kBlack60;
                  });
                },
                child: TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    hintStyle: TextStyle(color: hintColorPwd),
                    labelStyle: TextStyle(color: labelColorPwd),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              XiBoxButton(
                title: 'Sign-up',
                colour: kBlue80,
                onPressed: () async {
                  FocusScope.of(context).unfocus();
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    // if (!checkInput()) {
                    //   throw Exception('[] All fields must be entered. Enter username and password.');
                    // }
                    Navigator.pushNamed(context, HomeScreen.id);
                    setState(() {
                      showSpinner = false;
                    });
                  } catch (e) {
                    setState(() {
                      showSpinner = false;
                    });
                    Alert(
                      context: context,
                      title: "Sign-up",
                      desc: e.toString().substring(e.toString().indexOf(']') + 2),
                      buttons: [
                        DialogButton(
                          child: Text(
                            "Cancel",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () => Navigator.pop(context),
                        )
                      ],
                    ).show();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
