import 'package:flutter/material.dart';

Widget areaButton (
  String areaButtonText, Color areabuttonColor, void Function()? areaButtonPressed) {
    return Container(
      width: 75,
      height: areaButtonText == 'AC' ? 130 : 70,
      padding: const EdgeInsets.all(0),
      child: ElevatedButton(
        onPressed: areaButtonPressed, 
        child: Text(
          areaButtonText,
          style: const TextStyle(
            fontSize: 27,
            color: Colors.black
          ),
        ),
      ),
    );
  }