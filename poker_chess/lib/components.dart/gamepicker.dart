import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:poker_chess/components.dart/games.dart';
import 'package:poker_chess/constants.dart';
import 'package:poker_chess/providers/game_controller.dart';
import 'package:poker_chess/screens/gamepage.dart';
import 'package:provider/provider.dart';

class TimeCards extends StatefulWidget {
  const TimeCards({super.key});

  @override
  _TimeCardsState createState() => _TimeCardsState();

}

class _TimeCardsState extends State<TimeCards> {
  String selectedTime = ''; // Set the selected game time
  String selectedAmount = ''; // Set the amount of chips to wager
  String hasExtra = ''; // Set the extra time options
  String gameLevel = ''; // Set the game level

  @override
  Widget build(BuildContext context) {
      return Consumer<GameController>(
      builder: (context, provider, child) {
    return Container(
      // Replace Expanded with Container or SizedBox
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Game settings:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Divider(height: 200, thickness: 0.1), // Fixed divider thickness  to elevate the page name
          Row(
            children: [
              const Text("Select Game Time: "),
              const SizedBox(
                  width: 10), // Adds space between the text and dropdown
              Expanded(
                child: DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  hint: const Text(
                    'Select The Game Time',
                    style: TextStyle(fontSize: 14),
                  ),
                  items: gameOptions[0]
                      .map((item) => DropdownMenuItem<String>(
                            value: item, // Correct value assignment
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select Game Time.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      selectedTime = value ?? ''; // Set the selected value
                      
                    });
                  },
                  onSaved: (value) {
                    selectedTime = value ?? '';
                  
                  },
                ),
              ),
            ],
          ),
          const Divider(height: 5, thickness: 1), // Fixed divider thickness
          Row(
            children: [
              const Text("Select Added Time: "),
              const SizedBox(width: 10),
              Expanded(
                child: DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  hint: const Text(
                    'Select Added Time',
                    style: TextStyle(fontSize: 14),
                  ),
                  items: gameOptions[1]
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      hasExtra = value ?? '';
                    });
                  },
                  onSaved: (value) {
                    hasExtra = value ?? '';
                  },
                ),
              ),
            ],
          ),
          const Divider(height: 10, thickness: 1),
          Row(
            children: [
              const Text('Select Chips To Bet: '),
              const SizedBox(width: 10),
              Expanded(
                child: DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  hint: const Text(
                    'Select Chips To Bet',
                    style: TextStyle(fontSize: 14),
                  ),
                  items: gameOptions[2]
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedAmount = value ?? '';
                      
                    });
                  },
                  onSaved: (value) {
                    selectedAmount = value ?? '';
                  },
                ),
              ),
            ],
          ),
           const Divider(height: 5, thickness: 1), // Fixed divider thickness
          
          Row(
            children: [
              const Text("Select Game Level: "),
              const SizedBox(
                  width: 10), // Adds space between the text and dropdown
              Expanded(
                child: DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  hint: const Text(
                    'Select The Game Time',
                    style: TextStyle(fontSize: 14),
                  ),
                  items: gameOptions[3]
                      .map((item) => DropdownMenuItem<String>(
                            value: item, // Correct value assignment
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select Game Level.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      gameLevel = value ?? ''; // Set the selected value
                    });
                  },
                  onSaved: (value) {
                    gameLevel = value ?? '';
                  },
                ),
              ),
            ],
          ),

          const Divider(height: 50, thickness: 1),
          Card(
            child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
               Expanded(
                 child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                   minimumSize: Size(
                    MediaQuery.of(context).size.width, 50),
                    elevation: 2,
                    shadowColor: Colors.amber,
                    backgroundColor: Colors.amber),
                    onPressed: () {
                         provider.timing = selectedTime;
                         provider.addedTime = hasExtra;
                         provider.chips = selectedAmount;
                         provider.gameLevel = gameLevel;
                      Navigator.pushNamed(
                        context,
                        Constants.gameScreen,
                        arguments: {
                          'selectedTime': selectedTime,
                          'selectedAmount': selectedAmount,
                          'hasExtra': hasExtra,
                          'gameLevel': gameLevel,
                        },
                      );
                    },
                    child: const Text('Play'),
                  ),
               ),
              ],
            ),
          ),
        ],
      ),
    );
  });
}
}
