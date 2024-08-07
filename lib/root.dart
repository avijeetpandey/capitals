import 'package:capitals/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CapitalsApp extends StatelessWidget {
  const CapitalsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Capitals',
      home: HomePage(title: 'Capitals'),
    );
  }
}
