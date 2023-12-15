import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String userName;
  final String userEmail;
  final String profileImage; // Assuming profile image URL or path

  UserCard({
    required this.userName,
    required this.userEmail,
    required this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(profileImage), // or AssetImage for local image
        ),
        title: Text(
          userName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(userEmail),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Implement onTap functionality
          // For example, navigate to user details page
          //  Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetailsPage(user)));
        },
      ),
    );
  }
}
