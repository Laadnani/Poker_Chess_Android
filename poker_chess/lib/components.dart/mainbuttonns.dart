import 'package:flutter/material.dart';
import 'package:poker_chess/constants.dart';

class MainButtons extends StatelessWidget {
  final String title;
  final String subtitle;
  final String chipsToWage;
  
  final dynamic ontaped;
  

  const MainButtons({
    super.key,
    required this.title,
    required this.subtitle,
    required this.chipsToWage, 
    required  this.ontaped,
    
  });

  @override
  Widget build(BuildContext context) {
    return 
    Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
     margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
     elevation: 5,
     child:
      ElevatedButton(
        onPressed: ontaped,
        child: Row(
       
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            const SizedBox(
              child: Icon(Icons.arrow_back),
            ), 
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                Text(title, style: TextStyle( 
          
                  fontSize:FontConstants.fweight_Title)),
               const Divider(
                  height: 10,
                  thickness: 25,
                  color: Colors.black,
                ),
                Text( subtitle,  style: TextStyle(fontSize: FontConstants.fweight_SubTitle)),
                Text(chipsToWage,  style: TextStyle(fontSize: FontConstants.fweight_Chips)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


ontap() {

}