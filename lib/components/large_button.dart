import 'package:flutter/material.dart';
import '../utils/constants.dart';

class LargeButton extends StatelessWidget {
  final VoidCallback onPress;
  final String? label;

  const LargeButton({Key? key, required this.onPress, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 70,
        color: kFgColor,
        child: Center(
          child: Text(
            label.toString(),
            style: kLabelTextStyle,
          ),
        ),
      ),
    );
  }
}
