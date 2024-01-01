import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.onpressed,
    this.backgroundColor,
  });

  final Icon icon;
  final Color iconColor;
  final Color? backgroundColor;

  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 85,
        width: 85,
        child: FloatingActionButton(
          shape: const CircleBorder(eccentricity: 0.5),
          backgroundColor: backgroundColor ?? const Color.fromARGB(96, 74, 74, 74),
          onPressed: onpressed,
          foregroundColor: iconColor,
          child: icon,
        ));
  }
}
