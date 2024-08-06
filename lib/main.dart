import 'package:adstacks/dashboard/home.dart';
import 'package:flutter/material.dart';
import 'dashboard/fl_chart.dart';
import 'dashboard/profile_screen.dart';
import 'dashboard/summary.dart';

void main(){
  runApp(MYApp());
}
class MYApp extends StatelessWidget {
  const MYApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: ProfileScreen(),
    );
  }
}
