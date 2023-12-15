import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Future.delayed(Duration(seconds: 10000), () {
    
      Navigator.of(context).pushReplacementNamed('/OnboardingPages'); 
    });

    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           RichText(
             text: TextSpan(
              children: [
      TextSpan(
        text: "charge",
        style: 
       
        GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 35,color: Colors.black,
                     letterSpacing: 1.0
            ),
      ),
      TextSpan(
        text: "MOD",
        style: GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 35,color:Colors.orange,
                     letterSpacing: 2.0
              ),
      ),
    ],
  ),
),
Text(
  '                                             POWER TO PEOPLE',
  style: 
  GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 11,color: Colors.orange,
             ),
),
            SizedBox(height: 20),
            
          ],
        ),
      ),
    );
  }
}


