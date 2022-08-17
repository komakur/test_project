import 'package:flutter/material.dart';
import 'package:test_project/screens/home_screen.dart';

/// App to be run
class TestApp extends StatelessWidget {
  ///  Constructor of TestApp
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
