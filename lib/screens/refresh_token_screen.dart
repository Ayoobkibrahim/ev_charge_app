import 'package:flutter/material.dart';

class RefreshTokenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refresh Token'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
             
            // AuthService().refreshToken();
            // After token refresh, navigate to the desired screen
            Navigator.pushNamed(context, '/home'); 
          },
          child: Text('Refresh Token'),
        ),
      ),
    );
  }
}
