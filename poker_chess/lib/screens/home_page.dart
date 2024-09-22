import 'package:flutter/material.dart';
import 'package:poker_chess/components.dart/mainbuttonns.dart';
import 'package:poker_chess/components.dart/menu_bar.dart';
import 'package:poker_chess/constants.dart';
import 'package:poker_chess/providers/game_controller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
   @override
 
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
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 10,
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 25.0),
                children:  [
                  MainButtons(
                      isDisabled: true,
                      title: Constants.multiPlayerButtontitle,
                      subtitle: Constants.multiPlayerButtonsub,
                      chipsToWage: Constants.multiPlayerButtonchips,
                      ontaped: () {
                        gameController.opponentvalue = Constants.multiPlayerButtontitle;
                        // Navigate to home page
                       const AlertDialog(
                          title: Text('Coming Soon'),
                        );
                      }
                       ),
                  MainButtons(
                    title: Constants.vsComputerTitle,
                    subtitle: Constants.vsComputerSub,
                    chipsToWage: Constants.vsComputerChips,
                    isDisabled: false,
                     ontaped: () {
                        gameController.opponentvalue = Constants.vsComputerTitle;
                        // Navigate to home page
                        Navigator.pushNamed(context, Constants.vsComnpScreen);
                      }
                  ),
                  MainButtons(
                    isDisabled: false,
                    title: Constants.puzzlesTitle,
                    subtitle: Constants.puzzlesSub,
                    chipsToWage: Constants.puzzlesChips,
                     ontaped: () {
                        gameController.opponentvalue = Constants.vsComputerTitle;
                        // Navigate to home page
                        Navigator.pushNamed(context, Constants.puzzleScreen);
                      }
                  ),
                  MainButtons(
                    isDisabled: false,
                    title: Constants.customGameTitle,
                    subtitle: Constants.customGameSub,
                    chipsToWage: Constants.customGameChips,
                     ontaped: () {
                        gameController.opponentvalue = Constants.vsComputerTitle;
                        // Navigate to home page
                        Navigator.pushNamed(context, Constants.timer);
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
