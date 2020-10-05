import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {

  CalculatorBrain({this.height,this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI (){
    _bmi = weight / pow(height / 100,2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult (){
    if(_bmi >= 25){
      return 'Overweight';
    }else if(_bmi >= 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String getInterpretation (){
    if(_bmi >= 25){
      return 'You are overweight, Try to excersie Alot!';
    }else if(_bmi >= 18.5){
      return 'Your body weight is normal Awesome!,Just keep going like this';
    }else{
      return 'You are underweight,Try to eat protine and fats';
    }
  }

}