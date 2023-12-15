import 'package:ev_charge_app/providers/shared_preferences.dart';
import 'package:ev_charge_app/routes.dart';
import 'package:ev_charge_app/screens/Bottom_Nav_Bar.dart';
import 'package:ev_charge_app/screens/login_screen.dart';
import 'package:ev_charge_app/screens/onboarding/onboarding_screen.dart';
import 'package:ev_charge_app/screens/splash_screen.dart';
import 'package:ev_charge_app/screens/verify_otp_screen.dart';
import 'package:flutter/material.dart';




Future<void> main()  async {
   WidgetsFlutterBinding.ensureInitialized();

  SharedPreferencesManager sharedPreferencesManager = SharedPreferencesManager(); 
  await sharedPreferencesManager.init(); 
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
        
      ),
      initialRoute: Routes.splash,
      routes: {
        Routes.splash: (context) => SplashScreen(),
        Routes.onboarding: (context) => OnboardingPages(),
        Routes.login: (context) => LoginScreen(),
        Routes.otpVerification: (context) => OTPVerificationScreen(),
        Routes.Bottom: (context) => Bottom_Bar(),
        
      },
    );
  }
}
