
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseURL = 'https://as-uat.console.chargemod.com/temporary/sde1flutterATSR'; // Replace with your API base URL

  // Endpoint URLs
  static const String loginURL = '$baseURL/login';
  static const String logoutURL = '$baseURL/logout';

  Future<Map<String, dynamic>> login(String email, String password) async {
    final Map<String, dynamic> requestData = {
      'email': email,
      'password': password,
    };

    final http.Response response = await http.post(
      Uri.parse(loginURL),
      body: jsonEncode(requestData),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to login');
    }
  }

  Future<void> logout(String token) async {
    final http.Response response = await http.post(
      Uri.parse(logoutURL),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return;
    } else {
      throw Exception('Failed to logout');
    }
  }

  Future<dynamic> fetchData(String endpoint) async {
    try {
      final response = await http.get(Uri.parse('$baseURL$endpoint'));

      if (response.statusCode == 200) {
        // Assuming the response body is JSON data
        return response.body;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
