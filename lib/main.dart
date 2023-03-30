import 'package:flutter/material.dart';
import 'package:sample_project/splash_screen.dart';
import 'login_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Splash(),
      '/welcome': (context) => loginscreen(),
    },
  ));
}
