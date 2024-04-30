import 'package:flutter/material.dart';

List <String> list = <String> [
  'km'
];

class AreaPage extends StatefulWidget {
  const AreaPage({super.key});

  @override
  State<AreaPage> createState() => _AreaPageState();
}

class _AreaPageState extends State<AreaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
        title: const Text(
          'Area',
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
      body: Column(
        children: [
          Row(

          )
        ],
      ),
    );
  }
}

class dropButton extends StatefulWidget {
  const dropButton({super.key});

  @override
  State<dropButton> createState() => _dropButtonState();
}

class _dropButtonState extends State<dropButton> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
