import 'package:flutter/material.dart';

class PlayerIngameCard extends StatelessWidget {
  final String username;
  final String userIcon ;
  final String userChips;

  const PlayerIngameCard({
    super.key,
    required this.username,
    required this.userIcon,
    required this.userChips,
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
              backgroundImage:  AssetImage(userIcon),
            ),
            const SizedBox(height: 8),
            Text(
              username,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Chips: $userChips',
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


