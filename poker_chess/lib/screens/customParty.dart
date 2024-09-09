import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:poker_chess/providers/game_controller.dart';
import 'package:poker_chess/providers/auth_controller.dart';
import 'package:poker_chess/providers/player_controller.dart'; // Replace with actual paths

class CustomgameScreen extends StatefulWidget {
  const CustomgameScreen({super.key});

  @override
  CustomgameScreenState createState() => CustomgameScreenState();
}

class CustomgameScreenState extends State<CustomgameScreen> {
  @override
  Widget build(BuildContext context) {
    // Reading values from providers
    final gameController = context.watch<GameController>();
    final authController = context.watch<AuthController>();
    final playerController = context.watch<PlayerController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Page Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Displaying provider values
            Text('Opponent: ${gameController.opponent}'),
    

            const SizedBox(height: 20),

            // Buttons to interact with providers
            ElevatedButton(
              onPressed: () {
                // Updating the GameController
                gameController.opponentvalue = 'New Opponent';
              },
              child: const Text('Set New Opponent'),
            ),
            ElevatedButton(
              onPressed: () {
                // Updating the AuthController
              
              },
              child: const Text('Set New User'),
            ),
            ElevatedButton(
              onPressed: () {
                // Updating the PlayerController
               
              },
              child: const Text('Update Player Score'),
            ),
          ],
        ),
      ),
    );
  }
}
