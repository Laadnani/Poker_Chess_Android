import 'dart:math';
import 'package:flutter/material.dart';
import 'package:bishop/bishop.dart' as bishop;
import 'package:poker_chess/components.dart/player_ingame_card.dart';
import 'package:poker_chess/providers/game_controller.dart';
import 'package:provider/provider.dart';
import 'package:squares/squares.dart';
import 'package:square_bishop/square_bishop.dart';
import 'package:poker_chess/constants.dart';

class Gamepage extends StatefulWidget {
  const Gamepage({super.key});

  @override
  GamepageState createState() => GamepageState();
}


class GamepageState extends State<Gamepage> {

  
late bishop.Game game;
  late SquaresState state;
  int player = Squares.white;
  bool aiThinking = false;
  bool flipBoard = false;
  


  @override
  void initState() {

    _resetGame(false);
    super.initState();
  }

  void _resetGame([bool ss = true]) {
    game = bishop.Game(variant: bishop.Variant.standard());
    state = game.squaresState(player);
    if (ss) setState(() {});
  }

  void _flipBoard() => setState(() => flipBoard = !flipBoard);

  void _onMove(Move move) async {
    bool result = game.makeSquaresMove(move);
    if (result) {
      setState(() => state = game.squaresState(player));
     
    }
    if (state.state == PlayState.theirTurn && !aiThinking) {
      setState(() => aiThinking = true);
      await Future.delayed(
          Duration(milliseconds: Random().nextInt(4750) + 250));
      game.makeRandomMove();
      setState(() {
        aiThinking = false;
        state = game.squaresState(player);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<GameController>(

      builder: (context, provider, child) {
        // Access the timing value using provider.timing
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Poker Chess'),
      ),
      body:  Center ( 
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
              PlayerIngameCard(
            username: 'Stockfish',
           userIcon: Constants.stockfishpicture,
             userChips: provider.extractFirstWord(provider.chips),
             timing: provider.gameTime,
             ),

            Padding(
              padding:  const EdgeInsets.all(4.0),
              child: BoardController(
                state: flipBoard ? state.board.flipped() : state.board,
                playState: state.state,
                pieceSet: PieceSet.merida(),
                theme: BoardTheme.blueGrey,
                moves: state.moves,
                onMove: _onMove,
                onPremove: _onMove,
                markerTheme: MarkerTheme(
                  empty: MarkerTheme.dot,
                  piece: MarkerTheme.corners(),
                ),
                promotionBehaviour: PromotionBehaviour.autoPremove,
              ),
            ),
                PlayerIngameCard (
              username: 'Myself',
              userIcon: Constants.playerIcon,
              userChips: provider.extractFirstWord(provider.chips),
              timing: provider.gameTime,
          ), 
              ElevatedButton(onPressed: () {
                    // ignore: avoid_print
                    print('Selected Time: ${provider.timing}');
                    print('Selected Time: ${provider.addedTime}');
                    print('Selected Time: ${provider.chips}');
                    print('Selected Time: ${provider.gameLevel}');
                 
                    

           
              }, child:const Center(child: Text('New Game'))),
          ]
      )
    )
    );
  });
} 
 }