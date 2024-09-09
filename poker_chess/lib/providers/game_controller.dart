import 'package:flutter/material.dart';

class GameController extends ChangeNotifier {
  // setting opponent Value to access diferent pages in the app

  // setting the value 1st opponent
  String _opponent = '';

  String get opponent => _opponent;

  set opponentvalue(String value) {
    _opponent = value; 
    notifyListeners(); 
  }

  // setting the value of the timing 
}
