import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Top icons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.arrow_back, size: 28),
                  Icon(Icons.edit, size: 28),
                ],
              ),
            ),
            const SizedBox(height: 50),
            // Avatar
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("assets/profile.jpg"),
            ),
            const SizedBox(height: 20),
            // Name
            const Text(
              'Cristiano Ronaldo - CR7',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            // Location
            const Text(
              'Funchal City, Portugal',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const Text(
              '05/02/1985, Goat',
              style: TextStyle(fontSize:16, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
