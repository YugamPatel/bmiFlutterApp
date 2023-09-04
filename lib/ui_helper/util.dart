import 'package:flutter/material.dart';

TextStyle myTextStyle15({Color textbook = Colors.black , FontStyle fontStyle = FontStyle.normal , FontWeight weight = FontWeight.normal}) {
  return TextStyle(
    color: textbook,
    fontSize: 11,
    fontFamily: 'yugamsfont',
    fontWeight: FontWeight.bold,
    letterSpacing: 15,
    wordSpacing: 15,
  );
}
TextStyle myTextStyle20() {
  return const TextStyle(
    color: Colors.green,
    fontSize: 20,
    fontFamily: 'yugamsfont',
    fontWeight: FontWeight.bold,
    letterSpacing: 15,
    wordSpacing: 15,
  );
}
