// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class ApiService {
//   static const String baseUrl = 'https://as-uat.console.chargemod.com/temporary/sde1flutterATSR';
//   // Add other necessary configurations or headers here

//   Future<dynamic> fetchData(String route) async {
//     final response = await http.get(Uri.parse('$baseUrl$route'));

//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception('Failed to load data');
//     }
//   }

//   // Add other methods for POST, PUT, DELETE requests if needed
// }



import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl =
      'https://as-uat.console.chargemod.com/temporary/sde1flutterATSR';

  Future<dynamic> fetchData(String route) async {
    final response = await http.get(Uri.parse('$baseUrl$route'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<dynamic> postData(String route, dynamic data) async {
    final response = await http.post(
      Uri.parse('$baseUrl$route'),
      body: json.encode(data),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        // Add other necessary headers if required
      },
    );

    if (response.statusCode == 201) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to post data');
    }
  }

  Future<dynamic> putData(String route, dynamic data) async {
    final response = await http.put(
      Uri.parse('$baseUrl$route'),
      body: json.encode(data),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        // Add other necessary headers if required
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to update data');
    }
  }

  Future<dynamic> deleteData(String route) async {
    final response = await http.delete(
      Uri.parse('$baseUrl$route'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        // Add other necessary headers if required
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to delete data');
    }
  }
}
