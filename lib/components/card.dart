import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  // final IconData? icon;
  // final String? label;
  final Color? color;
  final Widget? childWidget;

  const ReuseableCard({Key? key, this.childWidget, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: childWidget);
  }
}


//  Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(
//             icon,
//             color: Colors.white,
//             size: 60,
//           ),
//           Text(
//             '$label',
//             style: const TextStyle(
//                 color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
//           )
//         ],
//       ),