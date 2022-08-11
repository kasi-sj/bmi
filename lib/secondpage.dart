import 'package:flutter/material.dart';
import 'package:flutter_application_8/home.dart';
import 'constant.dart';
import 'widget.dart';
import 'calculator.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI',
          style: st4,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Flexible(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  'Your BMI',
                  style: st4,
                ),
              ),
            ),
          ),
          Flexible(
              flex: 5,
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: activecolor,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          no.getmessage(),
                          style: st3,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          no.getbmi(),
                          style: const TextStyle(
                              fontSize: 80, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          no.getadvise(),
                          style: st2,
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Flexible(
              flex: 2,
              child: Calculate(
                text: 'RECALCULATE',
                fun: const MyHomePage(),
              ))
        ],
      ),
    );
  }
}
