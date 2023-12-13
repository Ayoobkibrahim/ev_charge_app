import 'package:ev_charge_app/routes.dart';
import 'package:ev_charge_app/screens/Bottom_Nav_Bar.dart';
// import 'package:ev_charge_app/screens/home_screen.dart';
import 'package:ev_charge_app/screens/login_screen.dart';
import 'package:ev_charge_app/screens/onboarding/onboarding_screen.dart';
import 'package:ev_charge_app/screens/splash_screen.dart';
import 'package:ev_charge_app/screens/verify_otp_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_config/flutter_config.dart';



void main()  {
  // WidgetsFlutterBinding.ensureInitialized(); // Required by FlutterConfig
  // await FlutterConfig.loadEnvVariables();
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Add more theme configurations if required
      ),
      initialRoute: Routes.splash, // Set initial route to splash screen
      routes: {
        Routes.splash: (context) => SplashScreen(),
        Routes.onboarding: (context) => OnboardingPages(),
        Routes.login: (context) => LoginScreen(),
        Routes.otpVerification: (context) => OTPVerificationScreen(),
        Routes.Bottom: (context) => Bottom_Bar(),
        // Routes.home: (context) => HomeScreen(),
        // Define other routes for different screens
        // Example: Routes.login: (context) => LoginScreen(),
      },
    );
  }
}
