import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui/bookmysleep%20ui/house_details_screen.dart';

import 'bookmysleep ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      title: 'UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HouseDetailScreen(),
    );
  }
}
