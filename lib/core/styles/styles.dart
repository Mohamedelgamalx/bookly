import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const titleNormal16 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w300
  );
  static const titleMedium18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600
  );
  static const titleLarge20 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: kPlayFair
  );
}