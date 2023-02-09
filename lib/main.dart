import 'package:flutter/material.dart';

import 'homepage.dart';
import 'homepage2.dart';



void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
        // '/': (context) => HomePage(),
        '/': (context) => HomePage2(),
     },
    ),
  );
}