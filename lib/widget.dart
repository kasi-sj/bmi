import 'package:flutter/material.dart';
import 'package:flutter_application_8/calculator.dart';
import 'constant.dart';

class Top extends StatelessWidget {
  var icon;
  var st;
  var col;
  var onpress;

  Top({
    @required this.icon,
    @required this.st,
    @required this.col,
    @required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: col,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                st,
                style: st2,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Calculate extends StatelessWidget {
  Calculate({required this.text, required this.fun});
  var text;
  var fun;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        no = Calculator(height: height, weight: weight);
        no.getbmi();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return fun;
            },
          ),
        );
      },
      child: Container(
        height: 80,
        width: double.infinity,
        color: Colors.purple,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
