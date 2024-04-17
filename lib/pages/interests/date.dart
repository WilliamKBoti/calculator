import 'package:flutter/material.dart';

class DatePage extends StatefulWidget {
  const DatePage({super.key});

  @override
  State<DatePage> createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
        title: const Text(
          'Date',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
    );
  }
}