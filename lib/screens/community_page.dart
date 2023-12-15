
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CommunityScreen extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar( centerTitle: true,
          title: Text('Notifications',
          style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.headline6,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: 
          Card(
            child: Column(
              children: [
                SizedBox(height: 20),
                Column(
                   children: [
                     Image.network(
                       'https://media.istockphoto.com/id/1387159408/photo/ev-charging-station.webp?b=1&s=170667a&w=0&k=20&c=7bttmDXLWhcCWDSKzRstQbrKRSYAKztlw8a2HZrqErA=',
                      fit: BoxFit.fill,
                     ),
                     Text('STATION',style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.headline6,
              fontSize: 16,
              fontWeight: FontWeight.w400,),),
                   ],
                ),
                Column(
                   children: [
                     Image.network(
                       'https://media.istockphoto.com/id/516374985/photo/charging-electric-car.webp?b=1&s=170667a&w=0&k=20&c=M1n1mdtMQ6u4i55IOYMb8lNyhdPUhFHuJ_tbkncgknc=',
                      fit: BoxFit.fill,
                     ),
                     Text('E-V CHARGING',style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.headline6,
              fontSize: 16,
              fontWeight: FontWeight.w400,),),
                   ],
                ),
                SizedBox(height: 20),
                Column(
                   children: [
                     Image.network(
                       'https://media.istockphoto.com/id/1263917400/photo/modern-electric-car-with-electric-charging-station.webp?b=1&s=170667a&w=0&k=20&c=kinC3qehoXDC-zR-6vRyiCTVBW8VM-Nt2qEx49n03ho=',
                      fit: BoxFit.fill,
                     ),
                     Text('EV PROVIDERS',style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.headline6,
              fontSize: 16,
              fontWeight: FontWeight.w400,),),
                   ],
                ),
                Column(
                   children: [
                     Image.network(
                       'https://media.istockphoto.com/id/1323427600/photo/electric-car-charging-station-for-charge-ev-battery-plug-for-vehicle-with-electric-engine-ev.webp?b=1&s=170667a&w=0&k=20&c=95EkGJ6U7b4owDPxD6pfDyUzlYodmmkQHXnFiFTRSVM=',
                      fit: BoxFit.fill,
                     ),
                     Text('E-V CHARGE POINTS',style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.headline6,
              fontSize: 16,
              fontWeight: FontWeight.w400,),),
                   ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
 }
}