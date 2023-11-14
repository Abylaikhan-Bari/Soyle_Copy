import 'package:flutter/material.dart';

class TrainingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grammar Training'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('Lesson 1: Basics of Grammar'),
              onTap: () {
                // Navigate to Lesson 1
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Lesson 2: Punctuation'),
              onTap: () {
                // Navigate to Lesson 2
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Lesson 3: Parts of Speech'),
              onTap: () {
                // Navigate to Lesson 3
              },
            ),
          ),
          // Add more lessons as needed
        ],
      ),
    );
  }
}
