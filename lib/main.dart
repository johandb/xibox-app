import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xibox_app/screens/home_screen.dart';
import 'package:xibox_app/screens/login_screen.dart';
import 'package:xibox_app/screens/registration_screen.dart';
import 'package:xibox_app/screens/welcome_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(XiBoxApp());
}

class XiBoxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
