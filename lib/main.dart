import 'package:flutter/material.dart';

import 'modules/screens/home_screen/views/homescreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) => const HomeScreen(),
      },
    ),
  );
}
