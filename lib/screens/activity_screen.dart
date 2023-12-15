import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
          Activity(),
          SizedBox(height: 80),
          LottieImage(),
          SizedBox(height: 10),
          NoActivity(),
          SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
      )
    );
  }
}



class NoActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'No Activity History',
          style: 
          GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
             fontSize: 16,fontWeight:FontWeight.w400,
            ),
          
        ),
      ],
    );
  }
}

class Activity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Activity',
          style: 
        GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
             fontSize: 16,fontWeight:FontWeight.w400,
            ),
        ),
      ],
    );
  }
}



class LottieImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 463,
          height: 416,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Lottie-animation-how-why-to-use-it.jpg"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}