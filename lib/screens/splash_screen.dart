import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    

    
    Future.delayed(Duration(seconds: 4), () {
    
      Navigator.of(context).pushReplacementNamed('/OnboardingPages'); 
    });

    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text("ChargeMOD",style:
          
            GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 30,),
           ),
           
            SizedBox(height: 20),
            
          ],
        ),
      ),
    );
  }
}


