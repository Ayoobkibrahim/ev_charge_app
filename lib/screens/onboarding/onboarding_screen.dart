import 'package:flutter/material.dart';

class OnboardingPages extends StatefulWidget {
  @override
  _OnboardingPagesState createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingPageModel> pages = [
    OnboardingPageModel(
      imageUrl: 'assets/images/ola scooter.png',
      
       description: 'Scan Charge and Go\n Effortless Charging schemas',
    ),
    OnboardingPageModel(
      imageUrl: 'assets/images/Chargemode.png',
      
       description: 'Grab The Best In Class\n Digital Experience Crafted For EV\n Drivers',
    ),
    OnboardingPageModel(
      imageUrl: 'assets/images/ChargeMOD.png',
      
       description: 'Intelligent Sensible Devices\n Ambicharge Series',
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              _pageController.animateToPage(
                pages.length - 1,
                duration: Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            },
            child: Text(
              'Skip',
              style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ],
        titleSpacing: 5,
        
      ),
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: pages.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return buildPage(pages[index]);
            },
          ),
          Positioned(
            bottom: 20.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(pages.length, (index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Container(
                    width: _currentPage == index ? 10.0 : 8.0,
                    height: 8.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentPage == index
                          ? const Color.fromARGB(255, 0, 0, 0)
                          : Colors.grey,
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
     
    

    
floatingActionButton: _currentPage == 0
    ? FloatingActionButton(
        onPressed: () {
          _pageController.nextPage(
            duration: Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        },
        child: Icon(Icons.arrow_forward),
      )
    : Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              },
              child: Icon(Icons.arrow_back),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {
                if (_currentPage != pages.length - 1) {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                } else {
                  // Handle action on the last page (optional)
                  print('Reached the last page!');

                  // Navigate to the login screen
                  Navigator.pushReplacementNamed(context, '/login');
                }
              },
              child: _currentPage != pages.length - 1
                  ? Icon(Icons.arrow_forward)
                  : GestureDetector(
                      onTap: () {
                        // Navigate to the login screen
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      child: Icon(Icons.check),
                    ),
            ),
          ),
        ],
      ),



    );
  }

  Widget buildPage(OnboardingPageModel page) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 150),
           if (_currentPage == 0) Group33668(),
          if (_currentPage == 1) Group35403(),
          if (_currentPage == 2) Group33709(),
          SizedBox(height: 30),
          Image.asset(
            page.imageUrl,
            height: 200,
          ),
          SizedBox(height: 50),
          
          SizedBox(height: 20),
          Text(
            page.description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 80),
        ],
      ),
    );
  }
}

class OnboardingPageModel {
  final String imageUrl;
  
   final String description;

  OnboardingPageModel({
    required this.imageUrl,
    
    required this.description,
  });
}

class Group33668 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 217,
          height: 122,
          child: const Stack(
            children: [
              Positioned(
                left: 39,
                top: 0,
                child: Text(
                  'Charge your EV',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF2E2E2D),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 18,
                child: Text(
                  'At Your',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF2E2E2D),
                    fontSize: 40,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 62,
                child: Text(
                  'Fingertips',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFE6740C),
                    fontSize: 40,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: 1,
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



class ScanChargeAndGoEffortlessChargingSchemas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Scan Charge and Go\nEffortless Charging schemas',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
      ],
    );
  }
}




class Group33687 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 62,
          height: 12,
          child: Stack(
            children: [
              Positioned(
                left: 54,
                top: 2,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: ShapeDecoration(
                    color: Color(0xFF666766),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 29,
                top: 2,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: ShapeDecoration(
                    color: Color(0xFF666766),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: ShapeDecoration(
                    color: Color(0xFF2E2E2D),
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

class Group33688 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 52,
          height: 52,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 52,
                  height: 52,
                  decoration: ShapeDecoration(
                    color: Color(0xFFE6740C),
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



class Group35403 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 269,
          height: 122,
          child: Stack(
            children: [
              Positioned(
                left: 50,
                top: 0,
                child: Text(
                  'Easy EV Navigation',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF2E2E2D),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 18,
                child: Text(
                  'Travel Route',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF2E2E2D),
                    fontSize: 40,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Positioned(
                left: 5,
                top: 62,
                child: Text(
                  'For Electrics',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFE6740C),
                    fontSize: 40,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: 1,
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


class GrabTheBestInClassDigitalExperienceCraftedForEvDrivers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Grab The Best In Class\nDigital Experience Crafted For\nEV Drivers',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
      ],
    );
  }
}


class Group33709 extends StatelessWidget {
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
                left: 25,
                top: 0,
                child: Text(
                  'interaction with Grid',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF2E2E2D),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Positioned(
                left: 17,
                top: 18,
                child: Text(
                  'RealTime',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF2E2E2D),
                    fontSize: 40,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: 1,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 62,
                child: Text(
                  'Monitoring',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFE6740C),
                    fontSize: 40,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: 1,
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

class IntelligentSensibleDevicesAmbichargeSeries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Intelligent Sensible Devices\nAmbicharge Series',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
      ],
    );
  }
}