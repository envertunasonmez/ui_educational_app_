import 'package:educational_app_ui/constant/colors.dart';
import 'package:educational_app_ui/screens/subject.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: StaticColors.backgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const SubjectScreen(),
    );
  }
}
