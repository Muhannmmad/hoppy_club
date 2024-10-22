import 'package:flutter/material.dart';
import 'package:hoppy_club/detailed.profile.dart';
import 'package:hoppy_club/user.dart';

class ProfileCard extends StatelessWidget {
  final User user;

  ProfileCard({required this.user});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailedProfile(user: user),
          ),
        );
      },
      child: Card(
        elevation: 8.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.asset(
              user.profileImage,
              fit: BoxFit.cover,
              height: 800,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    "${user.firstName}, ${user.age}",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                    height: 80,
                  ),
                  Icon(
                    user.isOnline ? Icons.circle : Icons.circle_outlined,
                    color: user.isOnline ? Colors.green : Colors.red,
                    size: 10,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                user.city.toUpperCase(),
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}