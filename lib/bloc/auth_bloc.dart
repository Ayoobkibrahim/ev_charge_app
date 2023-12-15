import 'package:ev_charge_app/providers/shared_preferences.dart';
import 'package:ev_charge_app/services/api_service.dart';
import 'package:flutter/material.dart';

class AuthBloc extends ChangeNotifier {
  final ApiService _apiService = ApiService();

  Future<void> login(String email, String password) async {
    try {
      final response = await _apiService.login(email, password);

      if (response['success'] == true) {
        String token = response['token'];

        
        await SharedPreferencesManager().setString('token', token);

       
        notifyListeners();
      } else {
        throw Exception('Login failed');
      }
    } catch (e) {
      print('Login failed: $e');
      throw e;
    }
  }

  Future<void> logout() async {
    try {
      String? token = await SharedPreferencesManager().getString('token');
      if (token != null) {
        await _apiService.logout(token);

        
        await SharedPreferencesManager().remove('token');

        notifyListeners();
      }
    } catch (e) {
      print('Logout failed: $e');
      throw e;
    }
  }
}
