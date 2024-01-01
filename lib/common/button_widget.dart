import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    required this.textColor,
    required this.onpressed,
  });

  final String text;
  final Color textColor;

  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 85,
        width: 85,
        child: FloatingActionButton(
          shape: const CircleBorder(eccentricity: 0.5),
          backgroundColor: const Color.fromARGB(96, 74, 74, 74),
          onPressed: onpressed,
          child: Text(
            text,
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.normal, color: textColor),
          ),
        ));
  }
}
