import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final VoidCallback onPress;
  final Icon? icon;

  const RoundedButton({Key? key, this.icon, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      onPressed: onPress,
      fillColor: Colors.white,
      child: icon,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
    );
  }
}
