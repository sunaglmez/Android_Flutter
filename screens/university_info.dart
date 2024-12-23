import 'package:flutter/material.dart';

class UniversityInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Biruni Üniversitesi',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
            SizedBox(height: 20),
            Text(
              'Misyon, Vizyon ve Tarihçe...',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
