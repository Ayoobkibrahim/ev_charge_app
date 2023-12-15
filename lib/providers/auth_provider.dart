import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  Future<void> loginUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
    notifyListeners();
  }

  Future<void> logoutUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);
    notifyListeners();
  }

  bool isLoggedIn() {
    SharedPreferences prefs;
    bool? isLoggedIn;
    SharedPreferences.getInstance().then((value) {
      prefs = value;
      isLoggedIn = prefs.getBool('isLoggedIn');
    });
    return isLoggedIn ?? false;
  }
}
