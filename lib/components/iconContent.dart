import 'package:flutter/material.dart';
import '../utils/constants.dart';


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
          height: kSIzeBoxHeight,
        ),
        Text('$label', style: kLabelTextStyle)
      ],
    );
  }
}
