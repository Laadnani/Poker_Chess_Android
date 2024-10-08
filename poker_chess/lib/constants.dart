import 'package:flutter/material.dart';

class Constants {
  static String get _userid => "Player 1";
  static String get _username => "username";
  static String get _vs => '';

  set vs(String value) {
    value = _vs;
  }

// Time setters

  static String get _time => '';

  set time(String value) {
    value = _time;
  }

  static const String stockfishpicture = "assets/pictures/stockfish.png";
  static const String playerIcon = "assets/pictures/playerimage.jpg";

// home page buttons
  static const String multiPlayerButtontitle = ' Multiplayer ';
  static const String multiPlayerButtonsub = ' Coming Soon ';
  static const String multiPlayerButtonchips = ' Coming Soon ';

  static const String vsComputerTitle = ' Vs. Computer ';
  static const String vsComputerSub = ' Vs. Computer ';
  static const String vsComputerChips = 'Challenge Computer ';

  static const String puzzlesTitle = ' Puzzles ';
  static const String puzzlesSub = ' Puzzles ';
  static const String puzzlesChips = ' Puzzles ';

  static const String customGameTitle = ' Custom Game ';
  static const String customGameSub = ' Coming Soon ';
  static const String customGameChips = ' Coming Soon';

  get userid => _userid;
  get username => _username;

  static const String homeScreen = '/screens/home_page';
  static const String gameScreen = '/screens/gamespage';
  static const String profileScreen = '/screens/profilepage';
  static const String multiplayerScreen = '/screens/multiplayers';
  static const String puzzleScreen = '/screens/puzzlesPage';
  static const String customgameScreen = '/screens/customgamepage';
  static const String settingsScreen = '/screens/settings_page';
  static const String historyScreen = '/screens/history_games';
  static const String aboutScreen = '/screens/aboutPage';
  static const String vsComnpScreen = '/screens/vsComputer';
  static const String timer = '/testers/timer';
}

class FontConstants {
  static double fweight_Title = 35;
  static double fweight_SubTitle = 20;
  static double fweight_Chips = 15;
}

class ColorConstants {
  // Primary Light Colors
  static const Color primaryColorLight1 = Color(0xEE211A1D); // 93% opacity
  static const Color primaryColorLight5 = Color(0xEE07393C); // 93% opacity
  static const Color primaryColorLight2 = Color(0xEE6320EE); // 93% opacity
  static const Color primaryColorLight3 = Color(0xEE8075FF); // 93% opacity
  static const Color primaryColorLight4 = Color(0xEECAD5CA); // 93% opacity

  // Primary Dark Colors
  static const Color primaryColorDark1 = Color(0xEE0A090C); // 93% opacity
  static const Color primaryColorDark2 = Color(0xEEF0EDEE); // 93% opacity
  static const Color primaryColorDark3 = Color(0xEE07393C); // 93% opacity
  static const Color primaryColorDark4 = Color(0xEE90DDF0); // 93% opacity
  static const Color primaryColorDark5 = Color(0xEE2C666E); // 93% opacity
}
