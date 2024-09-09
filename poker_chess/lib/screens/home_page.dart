import 'package:flutter/material.dart';
import 'package:poker_chess/components.dart/mainbuttonns.dart';
import 'package:poker_chess/components.dart/menu_bar.dart';
import 'package:poker_chess/constants.dart';
import 'package:poker_chess/providers/game_controller.dart';
import 'package:poker_chess/screens/gamepage.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final gameController = context.read<GameController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Poker Chess'),
      ),
      body: Center(
        heightFactor: 5,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 10,
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 25.0),
                children:  [
                  MainButtons(
                      title: Constants.multiPlayerButtontitle,
                      subtitle: Constants.multiPlayerButtonsub,
                      chipsToWage: Constants.multiPlayerButtonchips,
                      ontaped: () {
                        gameController.opponentvalue = Constants.multiPlayerButtontitle;
                        // Navigate to home page
                        Navigator.pushNamed(context, Constants.multiplayerScreen);
                        print('it should be navigating to game page then asserting the opponent value \n to ${Constants.vsComputerSub}');
                        print(gameController.opponent);
                      }
                       ),
                  MainButtons(
                    title: Constants.vsComputerTitle,
                    subtitle: Constants.vsComputerSub,
                    chipsToWage: Constants.vsComputerChips,
                     ontaped: () {
                        gameController.opponentvalue = Constants.vsComputerTitle;
                        // Navigate to home page
                        Navigator.pushNamed(context, Constants.vsComnpScreen);
                      }
                  ),
                  MainButtons(
                    title: Constants.puzzlesTitle,
                    subtitle: Constants.puzzlesSub,
                    chipsToWage: Constants.vsComputerChips,
                     ontaped: () {
                        gameController.opponentvalue = Constants.vsComputerTitle;
                        // Navigate to home page
                        Navigator.pushNamed(context, Constants.puzzleScreen);
                      }
                  ),
                  MainButtons(
                    title: Constants.customGameTitle,
                    subtitle: Constants.customGameSub,
                    chipsToWage: Constants.customGameChips,
                     ontaped: () {
                        gameController.opponentvalue = Constants.vsComputerTitle;
                        // Navigate to home page
                        Navigator.pushNamed(context, Constants.customgameScreen);
                      }
                  ),
                ],
              ),
            ),
            const MenuBar1(),
          ],
        ),
      ),
    );
  }
}
