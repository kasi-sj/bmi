import 'package:flutter/material.dart';
import 'dart:math';

class Calculator {
  Calculator({required this.height, required this.weight});
  int height;
  int weight;
  var _bmi;
  var mes;
  var adv;

  getbmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  getmessage() {
    if (_bmi > 25) {
      return 'OVER WEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDER WEIGHT';
    }
  }

  getadvise() {
    if (_bmi > 25) {
      return 'you have to maintain your weight by jogging or walking';
    } else if (_bmi >= 18.5) {
      return 'recommend to maintain the weight ';
    } else {
      return 'you have to maintain your weight by good eating habits';
    }
  }
}
