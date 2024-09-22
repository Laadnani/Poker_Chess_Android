import 'package:flutter/material.dart';
import 'package:poker_chess/constants.dart';
import 'package:poker_chess/providers/auth_controller.dart';
import 'package:poker_chess/providers/game_controller.dart';
import 'package:poker_chess/providers/player_controller.dart';
import 'package:poker_chess/screens/customParty.dart';
import 'package:poker_chess/screens/gamepage.dart';
import 'package:poker_chess/screens/home_page.dart';
import 'package:poker_chess/screens/puzzlePage.dart';
import 'package:poker_chess/screens/vscomputer.dart';
import 'package:poker_chess/providers/setting_controller.dart';
import 'package:poker_chess/testers/timer.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => GameController()),
      ChangeNotifierProvider(create: (_) => AuthController()),
      ChangeNotifierProvider(create: (_) => PlayerController()),
      ChangeNotifierProvider(create: (_) => SettingController()),
    ],
    child: MyApp())
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const HomeScreen(),
      initialRoute: Constants.homeScreen,
      routes: {
        Constants.homeScreen: (context) => const HomePage(),
        Constants.gameScreen: (context) => const Gamepage(),
        Constants.puzzleScreen: (context) => const PuzzleScreen(),
        Constants.customgameScreen: (context) => const CustomgameScreen(),
        Constants.vsComnpScreen: (context) => const VsComnpcScreen(),
        Constants.timer: (context) =>  MyTimer(),

      },
    );
  }
}
