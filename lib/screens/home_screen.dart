import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';
import '../screens/project_screen.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Portfolio")),
      body: Column(
        children: [
          ProfileCard(), // Widget kartu profil
          SizedBox(height: 20),
          ElevatedButton(
            child: Text("View Projects"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>
                    ProjectsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
