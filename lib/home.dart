import 'package:flutter/material.dart';
import 'widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

var activecolor = Colors.black38;
var deactivecolor = Colors.black54;
var height = 160;
var weight = 50;
var age = 12;

enum Gender {
  male,
  female,
}

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
          title: Center(child: Text('BMI')),
          toolbarHeight: 50,
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
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
              ),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: activecolor,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: st2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          height.toString(),
                          style: st1,
                        ),
                        Text(
                          'cm',
                          style: TextStyle(fontSize: 8),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 50),
                          activeTrackColor: Colors.purple,
                          inactiveTrackColor: Colors.grey,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15)),
                      child: Slider(
                          min: 120,
                          max: 220,
                          activeColor: Colors.purple,
                          inactiveColor: Colors.grey,
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
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black38,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('WEIGHT', style: st2),
                              SizedBox(),
                              Text(
                                weight.toString(),
                                style: st1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  FloatingActionButton(
                                      onPressed: () {
                                        increse(1);
                                      },
                                      child: Icon(FontAwesomeIcons.add)),
                                  FloatingActionButton(
                                    onPressed: () {
                                      decrese(1);
                                    },
                                    child: Icon(FontAwesomeIcons.minus),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black38,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('AGE', style: st2),
                              SizedBox(),
                              Text(
                                age.toString(),
                                style: st1,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  FloatingActionButton(
                                      onPressed: () {
                                        increse(2);
                                      },
                                      child: Icon(FontAwesomeIcons.add)),
                                  FloatingActionButton(
                                    onPressed: () {
                                      decrese(2);
                                    },
                                    child: Icon(FontAwesomeIcons.minus),
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
              ),
              Container(
                height: 80,
                width: double.infinity,
                color: Colors.purple,
              )
            ],
          ),
        ));
  }
}
