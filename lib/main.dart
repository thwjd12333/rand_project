import 'package:flutter/material.dart';
import 'package:rand_project/views/home/page_home.dart';
import 'package:rand_project/views/position/page_position.dart';

void main() {
  runApp(
    const MaterialApp(
      // home: const Splash(),
      home: PagePosition(),
      // home: const MainFrame(),
      // initialRoute: '/',
      // onGenerateRoute: (settings) => AMRouter.selectRoute(settings),
    ),
  );
}
