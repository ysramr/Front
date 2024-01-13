import 'package:flutter/material.dart';
import 'StateModel.dart';
import 'ReviewDestinationScreen.dart'; // Create a new file for this screen
import 'ChooseDestinationScreen.dart';

class DestinationScreen extends StatefulWidget {
  final List<StateModel> destinations;

  DestinationScreen({required this.destinations});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destinations'),
      ),
      body: ListView.builder(
        itemCount: widget.destinations.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widget.destinations[index].name),
            subtitle: Text(widget.destinations[index].description),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                _deleteDestination(index);
              },
            ),
            onTap: () {
              _openReviewScreen(widget.destinations[index]);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addDestination();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _deleteDestination(int index) {
    setState(() {
      widget.destinations.removeAt(index);
    });
  }

  void _addDestination() async {
    final chosenDestination = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChooseDestinationScreen(),
      ),
    );

    if (chosenDestination != null && chosenDestination is StateModel) {
      setState(() {
        widget.destinations.add(chosenDestination);
      });
    }
  }

  void _openReviewScreen(StateModel destination) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ReviewDestinationScreen(destination: destination),
      ),
    );
  }
}

// Create a new file named ReviewDestinationScreen.dart
// Add the following code to it:



// Create a new file named ChooseDestinationScreen.dart
// Add the following code to it:

