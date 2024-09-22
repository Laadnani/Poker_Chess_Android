import 'package:flutter/material.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';


class MyTimer extends StatefulWidget {
  ///
  /// AppBar title
  ///
  final String title = 'Timer';

  /// Home page
  MyTimer({
    Key? key,
   
  }) : super(key: key);

  @override
  _MyTimerState createState() => _MyTimerState();
}

///
/// Page state
///
class _MyTimerState extends State<MyTimer> {
  // Controller
  final CountdownController _controller =
      new CountdownController(autoStart: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Start
                  ElevatedButton(
                    child: Text('Start'),
                    onPressed: () {
                      _controller.start();
                    },
                  ),
                  // Pause
                  ElevatedButton(
                    child: Text('Pause'),
                    onPressed: () {
                      _controller.pause();
                    },
                  ),
                  // Resume
                  ElevatedButton(
                    child: Text('Resume'),
                    onPressed: () {
                      _controller.resume();
                    },
                  ),
                  // Stop
                  ElevatedButton(
                    child: Text('Restart'),
                    onPressed: () {
                      _controller.restart();
                    },
                  ),
                ],
              ),
            ),
            Countdown(
              controller: _controller,
              seconds: 5,
              build: (_, double time) => Text(
                time.toString(),
                style: TextStyle(
                  fontSize: 100,
                ),
              ),
              interval: Duration(milliseconds: 100),
              onFinished: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Timer is done!'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
