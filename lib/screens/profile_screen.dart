import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(Profilescreen(),);
}


class Profilescreen extends StatefulWidget {
  const Profilescreen({Key? key}) : super(key: key);

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark().copyWith(
      //   scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      // ),
      home: Scaffold(
        body: ListView(
            shrinkWrap: true,
            children: [

              SizedBox(height: 20),
              Group33768(),

              SizedBox(height: 10),
              Group33829(),
              SizedBox(height: 10),
              Group33789(),
              SizedBox(height: 10),
              Group33837(),
              SizedBox(height: 10),
              Group33791(),
              SizedBox(height: 10),
              Group33790(),
              SizedBox(height: 10),
              Group33794(),
              SizedBox(height: 40),
              V100001(),
              SizedBox(height: 10),
              Copyright2022BpmPowerPvtLtdAllRightsReserved(),
              SizedBox(height: 20),

        ]),
      ),
    );
  }
}


class Group33768 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 50,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 14,
                child: SizedBox(
                  width: 93,
                  height: 24,
                  child: Text(
                    '   AYOOB',
                    style:

                    GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 16,fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 27,
                top: 0,
                child: SizedBox(
                  width: 34,
                  height: 15,
                  child: Text(
                    'Hello',
                    style:

                    GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 12,fontWeight: FontWeight.w500
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



class Group33829 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 312,
          height: 131,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 312,
                  height: 131,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 312,
                          height: 131,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 312,
                                  height: 131,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 1,
                                        top: 0,
                                        child: Container(
                                          width: 311,
                                          height: 131,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0x33000000),
                                                blurRadius: 4,
                                                offset: Offset(0, 0),
                                                spreadRadius: 0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 311,
                                          height: 131,
                                          child: const Stack(
                                            children: [
                                              // Positioned(
                                              //   left: 100,
                                              //   top: 0,
                                              //   child: Container(
                                              //     width: 311,
                                              //     height: 131,
                                              //     decoration: ShapeDecoration(
                                              //       color: Colors.white,
                                              //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                                              //       shadows: [
                                              //         BoxShadow(
                                              //           color: Color(0x33000000),
                                              //           blurRadius: 4,
                                              //           offset: Offset(0, 0),
                                              //           spreadRadius: 0,
                                              //         )
                                              //       ],
                                              //     ),
                                              //   ),
                                              // ),
                                              // Positioned(
                                              //   left: 30,
                                              //   top: -113.76,
                                              //   child: Container(
                                              //     width: 311,
                                              //     height: 268.03,
                                              //     decoration: BoxDecoration(
                                              //       // image: DecorationImage(
                                              //       //   image: NetworkImage("https://via.placeholder.com/311x268"),
                                              //       //   fit: BoxFit.cover,
                                              //       // ),
                                              //     ),
                                              //   ),
                                              // ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 19,
                                top: 16,
                                child: Text(
                                  'Total Energy Balance ',
                                  style:
                                  // TextStyle(
                                  //   color: Color(0xFF666766),
                                  //   fontSize: 10,
                                  //   fontFamily: 'Poppins',
                                  //   fontWeight: FontWeight.w500,
                                  //   height: 0,
                                  // ),
                                  GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                      fontSize: 10,fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 59,
                                child: Text(
                                  'Added 100 kWH on 20/11/2022',
                                  style:
                                  // TextStyle(
                                  //   color: Color(0xFF666766),
                                  //   fontSize: 10,
                                  //   fontFamily: 'Poppins',
                                  //   fontWeight: FontWeight.w400,
                                  //   height: 0,
                                  // ),
                                  GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                      fontSize: 10,fontWeight: FontWeight.w400
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 19,
                                top: 29,
                                child: Text(
                                  '99999 kWH',
                                  style:
                                  // TextStyle(
                                  //   color: Color(0xFF2E2E2D),
                                  //   fontSize: 20,
                                  //   fontFamily: 'Poppins',
                                  //   fontWeight: FontWeight.w700,
                                  //   height: 0,
                                  // ),
                                  GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                      fontSize: 20,fontWeight: FontWeight.w700
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 171,
                                top: 88,
                                child: Container(
                                  width: 121,
                                  height: 24,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 40,
                                        top: 4,
                                        child: SizedBox(
                                          width: 67,
                                          child: Text(
                                            '55 Points',
                                            style:
                                            // TextStyle(
                                            //   color: Color(0xFF2E2E2D),
                                            //   fontSize: 12,
                                            //   fontFamily: 'Poppins',
                                            //   fontWeight: FontWeight.w500,
                                            //   height: 0,
                                            // ),
                                            GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                                fontSize: 12,fontWeight: FontWeight.w500
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 121,
                                          height: 24,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(width: 1, color: Color(0xFF2E2E2D)),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21,
                        top: 88,
                        child: Container(
                          width: 126,
                          height: 24,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 126,
                                  height: 24,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF4EAD2B),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 27,
                                top: 3,
                                child: Container(
                                  width: 79,
                                  height: 18,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 9,
                                        top: 0,
                                        child: SizedBox(
                                          width: 70,
                                          child: Text(
                                            'Add Energy',
                                            textAlign: TextAlign.center,
                                            style:
                                            // TextStyle(
                                            //   color: Colors.white,
                                            //   fontSize: 12,
                                            //   fontFamily: 'Poppins',
                                            //   fontWeight: FontWeight.w500,
                                            //   height: 0,
                                            // ),
                                            GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                                fontSize: 12,fontWeight: FontWeight.w500
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 6,
                                        child: Container(
                                          width: 6,
                                          height: 6,
                                          child: Stack(children: [

                                              ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 203,
                top: 17,
                child: Container(
                  width: 61.45,
                  height: 54,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 3.72,
                        top: 0,
                        child: Container(
                          width: 54,
                          height: 54,
                          decoration: ShapeDecoration(
                            color: Color(0xFF007AFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 30.72,
                        child: Container(
                          width: 61.45,
                          height: 12.10,
                          decoration: const BoxDecoration(
                            color: Color(0xFF2537DA),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0.45,
                        top: 33,
                        child: SizedBox(
                          width: 61,
                          height: 7,
                          child: Text(
                            'Badge Name',
                            textAlign: TextAlign.center,
                            style:
                            // TextStyle(
                            //   color: Colors.white,
                            //   fontSize: 5,
                            //   fontFamily: 'Poppins',
                            //   fontWeight: FontWeight.w500,
                            //   height: 0,
                            // ),
                            GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 5,fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 192,
                top: 95,
                child: Container(
                  width: 11,
                  height: 11,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFE9852A),
                    shape: OvalBorder(),
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

class Group33789 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 312,
          height: 264,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 312,
                  height: 264,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 5,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
               Positioned(
                left: 69,
                top: 92,
                child: Text(
                  'My Electric Vehicles',
                  style: 
                  // TextStyle(
                  //   color: Color(0xFF2E2E2D),
                  //   fontSize: 12,
                  //   fontFamily: 'Poppins',
                  //   fontWeight: FontWeight.w400,
                  //   height: 0,
                  // ),
                  GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12,fontWeight: FontWeight.w400
                            ),
                
                ),
              ),
               Positioned(
                left: 69,
                top: 27,
                child: Text(
                  'My Payments',
                  style: 
                  // TextStyle(
                  //   color: Color(0xFF2E2E2D),
                  //   fontSize: 12,
                  //   fontFamily: 'Poppins',
                  //   fontWeight: FontWeight.w400,
                  //   height: 0,
                  // ),
                  GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12,fontWeight: FontWeight.w400
                            ),
                  

                ),
              ),
              Positioned(
                left: 69,
                top: 157,
                child: Text(
                  'My Favourite Stations',
                  style:
                  //  TextStyle(
                  //   color: Color(0xFF2E2E2D),
                  //   fontSize: 12,
                  //   fontFamily: 'Poppins',
                  //   fontWeight: FontWeight.w400,
                  //   height: 0,
                  // ),
                  GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12,fontWeight: FontWeight.w400
                            ),
                ),
              ),
              Positioned(
                left: 69,
                top: 222,
                child: Text(
                  'Alpha Membership',
                  style: 
                  // TextStyle(
                  //   color: Color(0xFF2E2E2D),
                  //   fontSize: 12,
                  //   fontFamily: 'Poppins',
                  //   fontWeight: FontWeight.w400,
                  //   height: 0,
                  // ),
                  GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12,fontWeight: FontWeight.w400
                            ),
                ),
              ),
              Positioned(
                left: 19,
                top: 80,
                child: Container(
                  width: 38.90,
                  height: 38.90,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 38.90,
                          height: 38.90,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFEBEBEB),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11,
                        top: 13,
                        child: Container(
                          width: 16,
                          height: 16.06,
                          child: Stack(children: [

                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 19,
                top: 15,
                child: Container(
                  width: 38.90,
                  height: 38.90,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 38.90,
                          height: 38.90,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFEBEBEB),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 19,
                top: 145,
                child: Container(
                  width: 38.90,
                  height: 38.90,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFEBEBEB),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 19,
                top: 210,
                child: Container(
                  width: 38.90,
                  height: 38.90,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFEBEBEB),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 36,
                top: 157,
                child: Container(
                  width: 6,
                  height: 15.50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 1.50,
                        top: 0,
                        child: Container(
                          width: 2,
                          height: 2,
                          decoration: const ShapeDecoration(
                            color: Colors.black,
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
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

class Group33790 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 312,
          height: 264,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 312,
                  height: 264,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 5,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 69,
                top: 92,
                child: Text(
                  'Raise Complaint',
                  style:
                  //  TextStyle(
                  //   color: Color(0xFF2E2E2D),
                  //   fontSize: 12,
                  //   fontFamily: 'Poppins',
                  //   fontWeight: FontWeight.w400,
                  //   height: 0,
                  // ),
                  GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12,fontWeight: FontWeight.w400
                            ),
                ),
              ),
              Positioned(
                left: 69,
                top: 27,
                child: Text(
                  'Help',
                  style:
                  //  TextStyle(
                  //   color: Color(0xFF2E2E2D),
                  //   fontSize: 12,
                  //   fontFamily: 'Poppins',
                  //   fontWeight: FontWeight.w400,
                  //   height: 0,
                  // ),
                  GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12,fontWeight: FontWeight.w400
                            ),
                ),
              ),
              Positioned(
                left: 69,
                top: 157,
                child: Text(
                  'About Us',
                  style: 
                  // TextStyle(
                  //   color: Color(0xFF2E2E2D),
                  //   fontSize: 12,
                  //   fontFamily: 'Poppins',
                  //   fontWeight: FontWeight.w400,
                  //   height: 0,
                  // ),
                  GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12,fontWeight: FontWeight.w400
                            ),
                ),
              ),
              Positioned(
                left: 69,
                top: 222,
                child: Text(
                  'Privacy Policy',
                  style:
                  //  TextStyle(
                  //   color: Color(0xFF2E2E2D),
                  //   fontSize: 12,
                  //   fontFamily: 'Poppins',
                  //   fontWeight: FontWeight.w400,
                  //   height: 0,
                  // ),
                  GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12,fontWeight: FontWeight.w400
                            ),
                ),
              ),
              Positioned(
                left: 19,
                top: 80,
                child: Container(
                  width: 38.90,
                  height: 38.90,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 38.90,
                          height: 38.90,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFEBEBEB),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11,
                        top: 13,
                        child: Container(
                          width: 16,
                          height: 16.06,
                          child: Stack(children: [

                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 19,
                top: 15,
                child: Container(
                  width: 38.90,
                  height: 38.90,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 38.90,
                          height: 38.90,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFEBEBEB),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 19,
                top: 145,
                child: Container(
                  width: 38.90,
                  height: 38.90,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFEBEBEB),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 19,
                top: 210,
                child: Container(
                  width: 38.90,
                  height: 38.90,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFEBEBEB),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 36,
                top: 157,
                child: Container(
                  width: 6,
                  height: 15.50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 1.50,
                        top: 0,
                        child: Container(
                          width: 2,
                          height: 2,
                          decoration: ShapeDecoration(
                            color: Colors.black,
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
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




class Group33791 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 312,
          height: 135,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 312,
                  height: 135,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 5,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 69,
                top: 92,
                child: Text(
                  'My Orders',
                  style:
                  //  TextStyle(
                  //   color: Color(0xFF2E2E2D),
                  //   fontSize: 12,
                  //   fontFamily: 'Poppins',
                  //   fontWeight: FontWeight.w400,
                  //   height: 0,
                  // ),
                  GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12,fontWeight: FontWeight.w400
                            ),
                ),
              ),
              Positioned(
                left: 69,
                top: 27,
                child: Text(
                  'My Devices',
                  style:
                  //  TextStyle(
                  //   color: Color(0xFF2E2E2D),
                  //   fontSize: 12,
                  //   fontFamily: 'Poppins',
                  //   fontWeight: FontWeight.w400,
                  //   height: 0,
                  // ),
                  GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12,fontWeight: FontWeight.w400
                            ),
                ),
              ),

              Positioned(
                left: 19,
                top: 80,
                child: Container(
                  width: 38.90,
                  height: 38.90,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 38.90,
                          height: 38.90,
                          decoration: ShapeDecoration(
                            color: Color(0xFFEBEBEB),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11,
                        top: 13,
                        child: Container(
                          width: 16,
                          height: 16.06,
                          child: Stack(children: [

                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 19,
                top: 15,
                child: Container(
                  width: 38.90,
                  height: 38.90,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 38.90,
                          height: 38.90,
                          decoration: ShapeDecoration(
                            color: Color(0xFFEBEBEB),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
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


class Group33837 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 312,
          height: 38,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 312,
                  height: 38,
                  decoration: ShapeDecoration(
                    color: Color(0xFFE6740C),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 5,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 58,
                top: 10,
                child: Text(
                  'Buy Machines From chargeMOD',
                  textAlign: TextAlign.center,
                  style:
                  //  TextStyle(
                  //   color: Colors.white,
                  //   fontSize: 12,
                  //   fontFamily: 'Poppins',
                  //   fontWeight: FontWeight.w400,
                  //   height: 0,
                  // ),
                  GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12,fontWeight: FontWeight.w400, color: Colors.white
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


class Group33794 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 312,
          height: 38,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 312,
                  height: 38,
                  decoration: ShapeDecoration(
                    color: Color(0xFFE6740C),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    shadows: [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 5,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 11,
                child: Text(
                  'Logout',
                  style:
                  //  TextStyle(
                  //   color: Colors.white,
                  //   fontSize: 12,
                  //   fontFamily: 'Poppins',
                  //   fontWeight: FontWeight.w400,
                  //   height: 0,
                  // ),
                  GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white
                            ),
                ),
              ),
              Positioned(
                left: 116,
                top: 11,
                child: Container(
                  width: 16,
                  height: 15.51,
                  child: Stack(children: [

                      ]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class V100001 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'V 1.0.0 (001)',
          style: 
          // TextStyle(
          //   color: Color(0xFF666766),
          //   fontSize: 10,
          //   fontFamily: 'Poppins',
          //   fontWeight: FontWeight.w400,
          //   height: 0,
          // ),
          GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12,fontWeight: FontWeight.w400
                            ),
        ),
        
      ],
    );
  }
}


class Copyright2022BpmPowerPvtLtdAllRightsReserved extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Copyright © 2022 BPM Power Pvt Ltd.\nAll rights reserved.',
          textAlign: TextAlign.center,
          style: 
          // TextStyle(
          //   color: Color(0xFF666766),
          //   fontSize: 10,
          //   fontFamily: 'Poppins',
          //   fontWeight: FontWeight.w400,
          //   height: 0,
          // ),
          GoogleFonts.poppins(textStyle: Theme.of(context).textTheme.displayLarge,
                                fontSize: 12,fontWeight: FontWeight.w400
                            ),
        ),
      ],
    );
  }
}