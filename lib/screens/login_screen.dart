import 'package:ev_charge_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                SizedBox(height: 180,),
                Group33861(),
                Group33856(),
                SizedBox(height: 10),
                Group33857(),
                SizedBox(height: 330),
                ByContinuingYouAgreeToOurTermsConditionAndPrivacyPolicy(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



class Group33861 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 235,
          height: 122,
          child: Stack(
            children: [
              Positioned(
                left: 65,
                top: 0,
                child: Text(
                  'ChargeMOD',
                 
                  style: 
                  
            GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
             fontSize: 18,
            ),
                ),
              ),
              Positioned(
                left: 10,
                top: 18,
                child: Text(
                  'Let’s Start',
                  textAlign: TextAlign.center,
                  style: 
                
                  GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
             fontSize: 45,fontWeight: FontWeight.w700
            ),
                ),
              ),
              Positioned(
                left: 0,
                top: 62,
                child: Text(
                  'From Login',
                  textAlign: TextAlign.center,
                  style: 
                  GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
             fontSize: 42,fontWeight: FontWeight.w700,color:  Color(0xFFE6740C),
            ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



class Group33856 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 289,
          height: 36,
          child:
              Row(
                children: [
                  Container(
                    width: 60,
                    padding: EdgeInsets.symmetric(horizontal: 7),
                    alignment: Alignment.center,
                     child: 
                     TextField( 
                      decoration: InputDecoration(
                        prefixIcon: Image.asset("assets/images/inidan Flag.png",
                        width: 20,height: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color:  Color(0xFFE4DEDE))
                        ),
                      
                        ),
                      
                          ),
                  ),
                   Expanded(
                    child:
                    Container(
                       height: 36,
                       child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Color(0xFFE4DEDE)),
                            
                       ),
                       filled: true,
                       fillColor: Colors.white,
                       hintText: 'Enter phone number',
                       prefixIcon: Icon(Icons.call_outlined),
                       
                       contentPadding: EdgeInsets.symmetric(horizontal: 12),
                       
                              )   , style: TextStyle(fontSize: 15), 
                                  ) , 
                )
                ) 
                 ],

              ),
            
    )],
          );
        
      
    
  }
 }


class Group33857 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 289,
          height: 38,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 289,
                  height: 38,
                  decoration: ShapeDecoration(
                    color: Color(0xFFE6740C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Navigate to OTP verification screen
                      Navigator.pushNamed(context, Routes.otpVerification);
                    },
                    child: SizedBox(
                      width: 194,
                      height: 16,
                      child: Text(
                        'Sent OTP',
                        textAlign: TextAlign.center,
                        style: 
                           GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 16,color: Colors.white
             ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

}



class ByContinuingYouAgreeToOurTermsConditionAndPrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'By Continuing you agree to our\n\n',
                style:
                 GoogleFonts.aBeeZee(textStyle: Theme.of(context).textTheme.displayLarge,
             fontSize: 14,color: Color(0xFF2E2E2D),
            ),
              ),
              TextSpan(
                text: 'Terms & Condition ',
                style:
                 GoogleFonts.aBeeZee(textStyle: Theme.of(context).textTheme.displayLarge,
             fontSize: 14,color: Color(0xFFE6740C),
            ),
              ),
              TextSpan(
                text: 'and',
                style: 
                 GoogleFonts.aBeeZee(textStyle: Theme.of(context).textTheme.displayLarge,
             fontSize: 14,color: Color(0xFF2E2E2D),
            ),
              ),
              TextSpan(
                text: ' Privacy Policy',
                style: 
                 GoogleFonts.aBeeZee(textStyle: Theme.of(context).textTheme.displayLarge,
             fontSize: 14,color: Color(0xFFE6740C),
            ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}