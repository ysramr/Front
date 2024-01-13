import 'package:flutter/material.dart';
import 'FeedbackScreen.dart';
import 'PlaceSearchScreen.dart';
import 'QAScreen.dart';
import 'DestinationScreen.dart';
import 'StateModel.dart';
import 'login_screen.dart'; // Import your registration screen file

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<StateModel> _destinations = statesList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your App'),
        actions: [
          IconButton(
            icon: Icon(Icons.place),
            onPressed: () {
              _openDestinationScreen();
            },
          ),
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              _logout();
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Main Content Goes Here'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.feedback),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FeedbackScreen()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.place),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PlaceSearchScreen()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.question_answer),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QAScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _openDestinationScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DestinationScreen(destinations: _destinations),
      ),
    );
  }

  void _logout() {
    // Perform any additional logout logic if needed
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
