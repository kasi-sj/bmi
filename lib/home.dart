import 'package:flutter/material.dart';
import 'widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constant.dart';
import 'secondpage.dart';

var selectedstate;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  male() {
    setState(() {
      selectedstate = Gender.male;
    });
  }

  female() {
    setState(() {
      selectedstate = Gender.female;
    });
  }

  increse(int noo) {
    setState(() {
      if (noo == 1) {
        weight++;
      } else {
        age++;
      }
    });
  }

  decrese(int noo) {
    setState(() {
      if (noo == 1) {
        weight--;
      } else {
        age--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI', style: st4)),
          toolbarHeight: 50,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Top(
                      icon: Icons.male,
                      st: 'MALE',
                      col: selectedstate == Gender.male
                          ? activecolor
                          : deactivecolor,
                      onpress: male,
                    ),
                  ),
                  Expanded(
                    child: Top(
                      icon: Icons.female,
                      st: 'FEMALE',
                      col: selectedstate == Gender.female
                          ? activecolor
                          : deactivecolor,
                      onpress: female,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: activecolor,
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'HEIGHT',
                      style: st2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: st1,
                      ),
                      const Text(
                        'cm',
                        style: TextStyle(fontSize: 8),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: const SliderThemeData(
                        trackHeight: 2,
                        thumbColor: Colors.purple,
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15)),
                    child: Slider(
                        min: 120,
                        max: 220,
                        value: height.toDouble(),
                        onChanged: (value) {
                          setState(() {
                            height = value.round();
                          });
                        }),
                  )
                ],
              ),
            )),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.black38,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('WEIGHT', style: st2),
                          const SizedBox(),
                          Text(
                            weight.toString(),
                            style: st1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                  backgroundColor: Colors.black38,
                                  onPressed: () {
                                    increse(1);
                                  },
                                  child: const Icon(FontAwesomeIcons.plus)),
                              FloatingActionButton(
                                backgroundColor: Colors.black38,
                                onPressed: () {
                                  decrese(1);
                                },
                                child: const Icon(FontAwesomeIcons.minus),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.black38,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('AGE', style: st2),
                          const SizedBox(),
                          Text(
                            age.toString(),
                            style: st1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton(
                                  backgroundColor: Colors.black38,
                                  onPressed: () {
                                    increse(2);
                                  },
                                  child: const Icon(FontAwesomeIcons.plus)),
                              FloatingActionButton(
                                backgroundColor: Colors.black38,
                                onPressed: () {
                                  decrese(2);
                                },
                                child: const Icon(FontAwesomeIcons.minus),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Calculate(
              text: 'CALCULATE',
              fun: const Secondpage(),
            )
          ],
        ));
  }
}
