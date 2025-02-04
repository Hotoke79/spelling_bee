import 'package:flutter/material.dart';

class Controller extends ChangeNotifier{
  int totalLetters = 0, lettersAnswered = 0;

  setUp({required int total}){
    totalLetters = total;
    print('tot lett $totalLetters');
    notifyListeners();
  }

  icrementLetters(){
    lettersAnswered++;
    //print('lettsAnswered $lettersAnswered');
    if(lettersAnswered==totalLetters){
      print('word completed');
    }
    notifyListeners();
  }
}