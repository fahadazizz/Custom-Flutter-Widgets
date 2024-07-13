import 'package:flutter/material.dart';

class ColorChange {
  Color back = Colors.black;
  Color front = Colors.white;
  void OnChange() {
    if (back == Colors.black) {
      back = Colors.white;
      front = Colors.black;
    } else {
      back = Colors.white;
      front = Colors.black;
    }
  }
}
