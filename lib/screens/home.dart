import 'package:flutter/material.dart';
import '../Brain.dart';
import '../components/card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/iconContent.dart';

Brain brain = Brain();

const Color kBgColor = Color(0xFF453C67);
const Color kFgColor = Color(0xFF6D67E4);
const Color kWhite = Colors.white;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                    color: kFgColor,
                    childWidget: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    color: kFgColor,
                    childWidget: IconContent(
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
            child: Container(
                margin: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kFgColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height (cm)',
                      style: TextStyle(
                          fontSize: 25,
                          color: kWhite,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${brain.getHeight().round()}',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Slider(
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
                  ],
                )),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kFgColor,
                      ),
                      margin: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight (kg)",
                            style: TextStyle(
                                color: kWhite,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${brain.getWeight()}',
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    brain.addWeight();
                                  });
                                },
                                child: Container(
                                  color: kWhite,
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(Icons.add),
                                ),
                              ),
                              SizedBox(width: 15),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    brain.reduceWeight();
                                  });
                                },
                                child: Container(
                                  color: kWhite,
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(Icons.exposure_minus_1),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kFgColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Age",
                            style: TextStyle(
                                color: kWhite,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${brain.getAge()}',
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    brain.addAge();
                                  });
                                },
                                child: Container(
                                  color: kWhite,
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(Icons.add),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    brain.reduceAge();
                                  });
                                },
                                child: Container(
                                  color: kWhite,
                                  padding: const EdgeInsets.all(5.0),
                                  child: const Icon(Icons.exposure_minus_1),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            color: kFgColor,
            child: const Center(
              child: Text(
                "CALCULATE",
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
