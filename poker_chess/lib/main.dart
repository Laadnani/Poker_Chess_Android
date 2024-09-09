import 'package:flutter/material.dart';
import 'package:poker_chess/constants.dart';
import 'package:poker_chess/providers/auth_controller.dart';
import 'package:poker_chess/providers/game_controller.dart';
import 'package:poker_chess/providers/player_controller.dart';
import 'package:poker_chess/screens/customParty.dart';
import 'package:poker_chess/screens/gamepage.dart';
import 'package:poker_chess/screens/history_games.dart';
import 'package:poker_chess/screens/home_page.dart';
import 'package:poker_chess/screens/multiplayers.dart';
import 'package:poker_chess/screens/puzzlesPage.dart';
import 'package:poker_chess/screens/settings_page.dart';
import 'package:poker_chess/screens/vsComputer.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => GameController()),
      ChangeNotifierProvider(create: (_) => PlayerController()),
      ChangeNotifierProvider(create: (_) => AuthController()),
      
    ],
    child:const MyApp())
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
        Constants.settingsScreen: (context) => const SettingsScreen(),
        Constants.customgameScreen: (context) => const CustomgameScreen(),
       Constants.multiplayerScreen: (context) => const MultiPlayerPage(),
       Constants.historyScreen: (context) => const HistoryScreen(),
         Constants.puzzleScreen: (context) => const PuzzleScreen(),
        Constants.vsComnpScreen: (context) => const VsComnpcScreen(),
      },
    );
  }
}
