import 'dart:ui';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({Key? key, required this.text, required this.onPress})
      : super(key: key);
  String text;
  VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: SizedBox(
        height: 60.0,
        child: OutlinedButton(
          style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: onPress,
        ),
      ),
    );
  }
}
