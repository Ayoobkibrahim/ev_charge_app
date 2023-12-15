
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            
            Navigator.pop(context);
          },
        ),
      ),


      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WelcomeGetStarted(),
                SizedBox(height: 50),
                WeVeSendYouTheVerificationCode(),
                SizedBox(height: 30),
                Group33864(),
                SizedBox(height: 20),
                ResentOtp(),
                SizedBox(height: 400),
                Group33857(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomeGetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Verification',
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}

class WeVeSendYouTheVerificationCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 244,
          child: Text(
            'We’ve sent you the verification\n\n code on ',
            textAlign: TextAlign.center,
            style: GoogleFonts.aBeeZee(
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}

class Group33864 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 242,
      height: 56,
      child: Row(
        children: List.generate(
          4,
          (index) => Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  '4', // Replace this with your code representation
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ResentOtp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Resend OTP',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 15,
            color: Color(0xFFE6740C),
          ),
        ),
      ],
    );
  }
}

class Group33857 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  
                  Navigator.pushReplacementNamed(context, '/BottomBar');
                },
                child: SizedBox(
                  width: 194,
                  height: 16,
                  child: Text(
                    'CONTINUE',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
