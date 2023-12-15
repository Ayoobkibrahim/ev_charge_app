import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Future.delayed(Duration(seconds: 3), () {
    
      Navigator.of(context).pushReplacementNamed('/OnboardingPages'); 
    });

    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 350),
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
            SizedBox(height: 300),
             ConnectingToChargemod(),
            
          ],
        ),
      ),
    );
  }
}



class ConnectingToChargemod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Connecting to chargeMOD',
          textAlign: TextAlign.center,
          style: 
         
          GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 10,color:Colors.black,fontWeight: FontWeight.w500,
                     
              ),
        ),
      ],
    );
  }
}

