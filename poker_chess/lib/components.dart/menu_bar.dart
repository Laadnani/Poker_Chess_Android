import 'package:flutter/material.dart';
import 'package:poker_chess/components.dart/mainbuttonns.dart';
import 'package:poker_chess/constants.dart';


// the main menu bar for the home screen

class MenuBar1 extends StatelessWidget {
  const MenuBar1({super.key, });
  
  

  @override
  Widget build(BuildContext context) {
    // add required features of the main app bar that will be displayed on the bottom of the home screen.
    return const Expanded(
      flex: 1,
      child:  Card(
         shadowColor: Colors.green,
           elevation: 12,
          child: SizedBox(
            height: 95,
            child: Row(
            
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: [
                // first item : home to return to home page.
                 SizedBox(
                  
                  child:  ElevatedButton( 
                  onPressed: needfunc,
                  child:  
                     CircleAvatar(
                  
                  child: Icon(Icons.home, fill: 1, size: 25),
                            ),
                          ),
                ),
            
                // second Item : history button to check all played games.
                SizedBox(
                
                 child: ElevatedButton(onPressed: needfunc,
                 
                   child:  
                     CircleAvatar(
                 
                  child: Icon(Icons.history),
                           ),
                         ),
               ),
                // 3rd Item : options button to change game settings.
                SizedBox(
              
                 child: ElevatedButton(onPressed: needfunc,
                 
                   child:  
                     CircleAvatar(
                  
                  child: Icon(Icons.settings),
                           ),
                         ),
               ),
                        // 4th Item : profile button to view and edit user profile.
              SizedBox(
              
               child: ElevatedButton(
                onPressed: needfunc,
                 
                   child:  
                    CircleAvatar(
                  
                  backgroundImage: AssetImage(Constants.playerIcon),
                ),
                       ),
             )
            
              ],
                
                ),
          )),
    );
  }
}

// a menu designed for the play game screen only
class PlayMenuBar extends StatefulWidget {
  const PlayMenuBar({super.key});

  @override
  State<PlayMenuBar> createState() => _PlayMenuBarState();
}

class _PlayMenuBarState extends State<PlayMenuBar> {
  @override
  Widget build(BuildContext context) {
    // add required features of the main app bar that will be displayed on the top of all the screens
    // and will be displayed on the bottom of the home screen.
    return const Center(
        child: Row(
            // first item : return IconButton(icon: Icon(Icons.menu), onPressed: () {}),

            // second Item : resign button

            // 3rd Item : draw button

            // 4th Item : special effects button
            ));
  }
}

void needfunc() {
print("function called here");
}