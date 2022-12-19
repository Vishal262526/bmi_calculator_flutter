import 'package:flutter/material.dart';

const TextStyle labelTextStyle =
    TextStyle(fontSize: 18.5, fontWeight: FontWeight.bold, color: kWhite);

const Color kWhite = Colors.white;

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.icon, required this.label});

  final IconData? icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 40,
          color: kWhite,
        ),
        const SizedBox(
          height: 10,
        ),
        Text('$label', style: labelTextStyle)
      ],
    );
  }
}
