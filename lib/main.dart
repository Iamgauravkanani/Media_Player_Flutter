import 'package:flutter/material.dart';

import 'modules/screens/home_screen/views/homescreen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) => const HomeScreen(),
      },
    ),
  );
}
