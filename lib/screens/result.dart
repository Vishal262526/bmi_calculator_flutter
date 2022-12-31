import 'package:bmi_calculator/utils/constants.dart';
import 'package:flutter/material.dart';
import '../components/large_button.dart';

class ResultScreen extends StatelessWidget {

  final String resultText;
  final String calculatedText;
  final String interpretationText;

  const ResultScreen({Key? key, required this.resultText, required this.calculatedText, required this.interpretationText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Result"),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(fontSize: 30, color: Colors.green),
                  ),
                  SizedBox(
                    height: kSIzeBoxHeight,
                  ),
                  Text(
                    calculatedText,
                    style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Text(interpretationText, textAlign:TextAlign.center, style: TextStyle(fontSize: 22,),),
            ),
          ),
          LargeButton(label: 'Go Back', onPress: () => Navigator.pop(context))
        ],
      ),
    );
  }
}
