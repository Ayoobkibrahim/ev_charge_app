
import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  static const String baseUrl = 'https://as-uat.console.chargemod.com/temporary/sde1flutterATSR';

  Future<String> signIn(String phoneNumber) async {
    final Map<String, String> headers = {
      'Content-Type': 'application/json', 
      'Authorization': 'Bearer YOUR_TOKEN_HERE', 
      'Custom-Header': 'Custom-Value',
      
    };

    final Map<String, dynamic> requestBody = {
      'phone_number': phoneNumber,
      
    };

    final response = await http.post(
      Uri.parse('$baseUrl/sign-in'), 
      headers: headers,
      body: json.encode(requestBody),
    );

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      return responseData['accessToken'] ?? ''; 
    } else {
      throw Exception('Failed to sign in');
    }
  }

  Future<void> refreshToken(String refreshToken) async {
   
  }

  Future<void> signOut() async {
   
  }
}

