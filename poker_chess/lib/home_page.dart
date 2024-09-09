import 'package:flutter/material.dart';
import 'package:poker_chess/components.dart/mainbuttonns.dart';
import 'package:poker_chess/components.dart/menu_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Poker Chess'),
        ),
        body:  Center(
           child:   Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 8,
                  child:  ListView (
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical:  25.0),
                   
                    children: const [
                      MainButtons(title: 'Title 1', subtitle: 'subtitle 2', chipsToWage: 'subtitle3'),
                      MainButtons(
                            title: 'Title 1',
                            subtitle: 'subtitle 2',
                            chipsToWage: 'subtitle3'),
                            MainButtons(
                            title: 'Title 1',
                            subtitle: 'subtitle 2',
                            chipsToWage: 'subtitle3'),
                      MainButtons(
                            title: 'Title 1',
                            subtitle: 'subtitle 2',
                            chipsToWage: 'subtitle3'),
                    ],
                  )
                  )
                  ,
               const MenuBar1(),
              ]),
        )
    );
  }
}