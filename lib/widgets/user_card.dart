import 'package:ev_charge_app/models/user.dart';
import 'package:flutter/material.dart';


class UserCard extends StatelessWidget {
  final User user;

  const UserCard({required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Customize card appearance as per your requirements
      child: ListTile(
        leading: Icon(Icons.person), // Display an icon or user avatar
        title: Text(user.name),
        subtitle: Text(user.email),
        // Add onTap or other functionalities if needed
      ),
    );
  }
}
