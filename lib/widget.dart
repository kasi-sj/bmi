import 'package:flutter/material.dart';

var activecolor = Colors.black38;
var deactivecolor = Colors.black54;
var st1 = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
var st2 = TextStyle(fontSize: 13, fontWeight: FontWeight.normal);

enum Gender {
  male,
  female,
}

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
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: col,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 100,
            ),
            SizedBox(
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
