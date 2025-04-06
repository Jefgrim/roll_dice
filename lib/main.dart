import 'package:flutter/material.dart';

import 'package:cafe_simeona/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer([Colors.red, Colors.blue]),
      ),
    ),
  );
}
