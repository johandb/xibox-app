import 'package:flutter/material.dart';

class XiBoxButton extends StatelessWidget {
  XiBoxButton({this.title, this.colour, @required this.onPressed});

  final Color colour;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 32.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
