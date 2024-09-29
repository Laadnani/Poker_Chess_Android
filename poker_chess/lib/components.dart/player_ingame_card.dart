import 'dart:async';
import 'dart:ffi';
import 'package:timer_count_down/timer_controller.dart';
import 'package:vibration/vibration.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:flutter/material.dart';
//import 'package:poker_chess/components.dart/timer.dart';

class PlayerIngameCard extends StatelessWidget {
  final String username;
  final String userIcon;
  final String userChips;
  final int timing;

  final CountdownController _controller = CountdownController(autoStart: false);
 

   PlayerIngameCard({
    super.key,
    required this.username,
    required this.userIcon,
    required this.userChips,
    required this.timing,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(userIcon),
            ),
            const SizedBox(height: 8),
            Text(
              username,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Chips: $userChips',
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  child: Countdown(
                    controller: _controller,
                    seconds: timing ,
                     build: (_, double time) => Text(
                      time.toString(),
                      style: const TextStyle(fontSize: 16),
                    ),
                    interval: const Duration(microseconds: 100),
                    onFinished: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Timer is done!')),
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}




