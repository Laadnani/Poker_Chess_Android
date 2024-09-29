import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:vibration/vibration.dart';
import 'package:timer_count_down/timer_count_down.dart';

class MyTimer extends StatefulWidget {
  /// AppBar title
  final String title = 'Timer';

  MyTimer({Key? key}) : super(key: key);

  @override
  _MyTimerState createState() => _MyTimerState();
}

class _MyTimerState extends State<MyTimer> {
  // Controller for the timer
  final CountdownController _controller = CountdownController(autoStart: false);

  // Input field variables
  static int initialDuration = 100; // Default duration
  final TextEditingController _inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Input field and save button
            _buildDurationInput(),
            const SizedBox(height: 20),
            // Timer buttons
            _buildTimerButtons(),
            // Countdown widget
            Countdown(
              controller: _controller,
              seconds: initialDuration, // trying to use the controller text 
              build: (_, double time) => Text(
                time.toString(),
                style: const TextStyle(fontSize: 100),
              ),
              interval: const Duration(milliseconds: 100),
              onFinished: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Timer is done!')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Builds the row containing the input field and save button
  Widget _buildDurationInput() {

    late int  value;


    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: TextField(
            controller: _inputController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Enter a duration (seconds)',
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            try {
              
               value= int.parse(_inputController.text);
              print('we are getting the new value of the timer');
              print(_inputController.text);
              _controller.restart();
              
              _inputController.clear(); // Clear input after saving
            } catch (e) {
              print('Invalid input: $e');
            }
          },
          child: const Text('Save'),
        ),
      ],
    );
  }

  // Builds the row containing the timer control buttons
  Widget _buildTimerButtons() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            child: const Text('Start'),
            onPressed: () => _controller.start(),
          ),
          ElevatedButton(
            child: const Text('Pause'),
            onPressed: () => _controller.pause(),
          ),
          ElevatedButton(
            child: const Text('Resume'),
            onPressed: () => _controller.resume(),
          ),
          ElevatedButton(
            child: const Text('Restart'),
            onPressed: () => _controller.restart(),
          ),
        ],
      ),
    );
  }
}
