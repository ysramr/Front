
import 'package:flutter/material.dart';
import 'StateModel.dart';


class ChooseDestinationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Destination'),
      ),
      body: ListView.builder(
        itemCount: statesList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(statesList[index].name),
            subtitle: Text(statesList[index].description),
            onTap: () {
              Navigator.pop(context, statesList[index]);
            },
          );
        },
      ),
    );
  }
}