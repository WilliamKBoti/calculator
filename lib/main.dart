import 'package:calculator/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Colors.white,
          
        ),    
      ),
      home: const  Homepage(),
    );
  }
}
