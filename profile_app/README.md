import 'package:flutter/material.dart';

void main() {
runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
home: ProfileScreen(),
);
}
}

class ProfileScreen extends StatelessWidget {
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
radius: 60,
backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=3"),
),
const SizedBox(height: 20),
// Name
const Text(
'Johan Smith',
style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
),
// Location
const Text(
'California, USA',
style: TextStyle(fontSize: 16, color: Colors.grey),
),
],
),
),
);
}
}
