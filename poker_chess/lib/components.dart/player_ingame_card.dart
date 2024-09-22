import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
//import 'package:poker_chess/components.dart/timer.dart';

class PlayerIngameCard extends StatelessWidget {
  final String username;
  final String userIcon;
  final String userChips;
  final String timing;

  const PlayerIngameCard({
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
                  child: TimerWidget(
                     initialMinutes: int.parse(timing[0]),
                     initialSeconds: 0,
                     isRunning: false),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}




class TimerWidget extends StatefulWidget {
  final int initialMinutes;
  final int initialSeconds;
  late bool isRunning = false;

   TimerWidget({
    required this.initialMinutes,
    required this.initialSeconds,
    required this.isRunning,
    super.key,
  });

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  int minutes = 0;
  int seconds = 0;
  late bool isRunning = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    minutes = widget.initialMinutes;
    seconds = widget.initialSeconds;
  }

  void startTicking() {
    isRunning = true;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (minutes > 0 || seconds > 0) {
        if (seconds == 0) {
          minutes--;
          seconds = 59;
        } else {
          seconds--;
        }

        setState(() {});
      } else {
        // Time's up: Game over
        timer.cancel();
        print('Game over');
        // Add game over screen logic here
      }
    });
  }

  void stopTicking() {
    isRunning = false;
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        '$minutes:$seconds',
        style: const TextStyle(
          fontFamily: 'montserrat',
          fontSize: 24,
        ),
      ),
    );
  }
}
