import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ateneo De Davao University",
            style: TextStyle(color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.grey[400],
      ),
      body: Center(
        child: Text("Profile"),
      ),
    );
  }
}
