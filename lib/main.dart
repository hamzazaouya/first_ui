import 'package:flutter/material.dart';
import "home_page.dart";

void main() {
  runApp(FirstUi());
}

class FirstUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: HomePage(),
    ));
  }
}

