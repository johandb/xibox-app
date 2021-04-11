import 'package:flutter/material.dart';

// Color constants
const kBlue = Color(0xFF003A8D);
const kBlue80 = Color(0xFF00337C);
const kBlue60 = Color(0xFF002C6A);
const kBlue40 = Color(0xFF002559);
const kBlue20 = Color(0xFF001E47);
const kBlue10 = Color(0xFF001736);

const kGreen = Color(0xFF84B819);
const kGreen80 = Color(0xFF75A414);
const kGreen60 = Color(0xFF66910F);
const kGreen40 = Color(0xFF577D0A);
const kGreen20 = Color(0xFF486A05);
const kGreen10 = Color(0xFF395600);

const kBlack = Color(0xFF000000);
const kBlack80 = Color(0xFF707070);
const kBlack60 = Color(0xFFB5B5B5);
const kBlack40 = Color(0xFFE5E5E5);
const kBlack20 = Color(0xFFF7F7F7);
const kWhite = Color(0xFFFFFFFF);

const kEyeIcon = Icon(Icons.remove_red_eye);

const kEuro = '\u{20AC}';

// TextField
const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  labelText: 'Field label',
  hintStyle: TextStyle(color: kBlack60),
  labelStyle: TextStyle(color: kGreen),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kBlack60, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kGreen, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);
