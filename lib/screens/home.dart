import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../Brain.dart';
import '../components/card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/iconContent.dart';
import '../utils/constants.dart';
import '../components/rounded_button.dart';
import '../screens/result.dart';
import '../components/large_button.dart';

Brain brain = Brain();

enum Gender {
  male,
  female,
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Color maleActiveCardColor = inactiveCardColor;
  // Color femaleActiveCardColor = inactiveCardColor;

  // // 0 = male , 1 = female
  // void toggleGenderColor(int activeColor) {
  //   if (activeColor == 0) {
  //     maleActiveCardColor = activeCardColor;
  //     femaleActiveCardColor = inactiveCardColor;
  //   } else {
  //     femaleActiveCardColor = activeCardColor;
  //     maleActiveCardColor = inactiveCardColor;
  //   }
  // }

  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    childWidget: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    childWidget: const IconContent(
                      icon: FontAwesomeIcons.person,
                      label: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: ReuseableCard(
                color: kFgColor,
                childWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Height (cm)', style: kLabelTextStyle),
                    const SizedBox(
                      height: kSIzeBoxHeight,
                    ),
                    Text('${brain.getHeight().round()}',
                        style: kValueTextStyle),
                    const SizedBox(
                      height: kSIzeBoxHeight,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 15.0),
                          overlayShape: const RoundSliderOverlayShape(
                            overlayRadius: 20,
                          )),
                      child: Slider(
                        activeColor: kWhite,
                        inactiveColor: kWhite,
                        value: brain.getHeight(),
                        min: 0,
                        max: 300,
                        onChanged: (double newHeight) {
                          setState(() {
                            brain.onHeightChange(newHeight);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReuseableCard(
                    color: kFgColor,
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Weight (kg)",
                          style: kSmallLabelTextStyle,
                        ),
                        const SizedBox(
                          height: kSIzeBoxHeight,
                        ),
                        Text(
                          brain.getAge().toString(),
                          style: kValueTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                              icon: Icon(Icons.add),
                              onPress: () {
                                setState(() {
                                  brain.addAge();
                                });
                              },
                            ),
                            const SizedBox(
                              width: kSizeBoxWidth,
                            ),
                            RoundedButton(
                              icon: Icon(Icons.exposure_minus_1),
                              onPress: () {
                                setState(() {
                                  brain.reduceAge();
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    color: kFgColor,
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Age",
                          style: kSmallLabelTextStyle,
                        ),
                        const SizedBox(
                          height: kSIzeBoxHeight,
                        ),
                        Text(
                          brain.getWeight().toString(),
                          style: kValueTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                              icon: Icon(Icons.add),
                              onPress: () {
                                setState(() {
                                  brain.addWeight();
                                });
                              },
                            ),
                            const SizedBox(
                              width: kSIzeBoxHeight,
                            ),
                            RoundedButton(
                              icon: Icon(Icons.exposure_minus_1),
                              onPress: () {
                                setState(() {
                                  brain.reduceWeight();
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: kSIzeBoxHeight,
          ),
          LargeButton(
            label: 'Calculate',
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultScreen(
                            calculatedText: '${brain.calculateBMI()}',
                            resultText: brain.getResult(),
                            interpretationText: brain.getInterpretation(),
                          )));
            },
          )
        ],
      ),
    );
  }
}
