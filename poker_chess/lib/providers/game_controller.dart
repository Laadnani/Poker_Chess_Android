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

// HELPER FUNCTION

  String extractFirstWord(String input) {
    final indexOfFirstSpace = input.indexOf(' ');
    if (indexOfFirstSpace == -1) {
      // No space found, return the entire string
      return input;
    } else {
      // Extract the substring before the first space
      return input.substring(0, indexOfFirstSpace);
    }
  }

// setting the value of the timing selected by the user
  late String _timing;

  String get timing => _timing;

  set timing(value) {
    _timing = value.toString();
    notifyListeners();
  }

  // setting the value of the added time

  late String _addedTime;

  String get addedTime => _addedTime;

  set addedTime(value) {
    _addedTime = value.toString();
    notifyListeners();
  }

  // setting the amount of chips

  late String _chips;

  String get chips => _chips;

  set chips(value) {
    _chips = value.toString();
    notifyListeners();
  }

  // setting the game level

  late String _gameLevel;

  String get gameLevel => _gameLevel;

  set gameLevel(value) {
    _gameLevel = value.toString();
    notifyListeners();
  }

  // set the gametime 

  late String gameTime = '${extractFirstWord(timing)} : 00';

 
}
