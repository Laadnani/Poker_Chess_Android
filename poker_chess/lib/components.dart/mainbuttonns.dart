import 'package:flutter/material.dart';
import 'package:poker_chess/constants.dart';

class MainButtons extends StatelessWidget {
  final String title;
  final String subtitle;
  final String chipsToWage;
  final bool isDisabled;
  final dynamic ontaped;
  

  const MainButtons({
    super.key,
    required this.title,
    required this.subtitle,
    required this.chipsToWage, 
    required this.isDisabled,
    required  this.ontaped,
    
  });

  @override
  Widget build(BuildContext context) {
    return 
    Card(
      surfaceTintColor: Colors.white54,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
     margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
     elevation: 5,
     child:
      ElevatedButton( 
        onPressed:  isDisabled? null : ontaped,
       style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
        child: Row(
       
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
           
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