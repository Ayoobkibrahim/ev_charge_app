import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  // Authentication-related methods and state
  bool isLoggedIn = false;

  void login() {
    // Login logic
    isLoggedIn = true;
    notifyListeners();
  }

  void logout() {
    // Logout logic
    isLoggedIn = false;
    notifyListeners();
  }
}
