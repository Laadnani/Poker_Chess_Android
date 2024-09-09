import 'package:flutter/material.dart';
import 'package:poker_chess/constants.dart';

class MainButtons extends StatelessWidget {
  final String title;
  final String subtitle;
  final String chipsToWage;
  

  const MainButtons({
    super.key,
    required this.title,
    required this.subtitle,
    required this.chipsToWage,
    
  });

  @override
  Widget build(BuildContext context) {
    return 
    Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),

     elevation: 5,
     child:
      ElevatedButton(
        iconAlignment: IconAlignment.start,
        onPressed: ontap,
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            
            const SizedBox(
              child: Icon(Icons.arrow_back),
            ), 
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('TitleText $title', style: TextStyle( fontSize:FontConstants.fweight_Title)),
               const Divider(
                  height: 10,
                  thickness: 25,
                  color: Colors.black,
                ),
                Text('SubTitleText1 $subtitle',  style: TextStyle(fontSize: FontConstants.fweight_SubTitle)),
                Text('SubTitleText2 $chipsToWage',  style: TextStyle(fontSize: FontConstants.fweight_Chips)),
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