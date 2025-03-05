import 'package:car_ai/home_screen.dart';
import 'package:car_ai/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CarDrivingTestApp());

class CarDrivingTestApp extends StatelessWidget {
  const CarDrivingTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}