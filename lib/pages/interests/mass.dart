import 'package:flutter/material.dart';

class MassPage extends StatefulWidget {
  const MassPage({super.key});

  @override
  State<MassPage> createState() => _MassPageState();
}

class _MassPageState extends State<MassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
        title: const Text(
          'Mass',
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