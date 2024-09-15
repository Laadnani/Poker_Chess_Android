import 'package:flutter/material.dart';
import 'package:poker_chess/components.dart/gamepicker.dart';
import 'package:poker_chess/components.dart/games.dart';
import 'package:provider/provider.dart';
import 'package:poker_chess/providers/game_controller.dart';
import 'package:poker_chess/providers/auth_controller.dart';
import 'package:poker_chess/providers/player_controller.dart'; // Replace with actual paths

class VsComnpcScreen extends StatefulWidget {
  const VsComnpcScreen({super.key});

  @override
  VsComnpcScreenState createState() => VsComnpcScreenState();
}

class VsComnpcScreenState extends State<VsComnpcScreen> {
  @override
  Widget build(BuildContext context) {
    // Reading values from providers
    final gameController = context.watch<GameController>();
    final authController = context.watch<AuthController>();
    final playerController = context.watch<PlayerController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Opponent: ${gameController.opponent}'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      
             TimeCards(),
             SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}
