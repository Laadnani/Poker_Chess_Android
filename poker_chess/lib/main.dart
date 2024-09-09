import 'package:flutter/material.dart';
import 'package:poker_chess/gamepage.dart';
import 'package:poker_chess/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(title: const Text('home page')),
          body: Builder(
            builder: (context) => Center(
              child: Padding(
                padding: const EdgeInsets.all(
                    20.0), 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text('Welcome to the home page of Poker Chess'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange),
                      child: const Text('Start Game'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
