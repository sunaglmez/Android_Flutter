import 'package:flutter/material.dart';

class AcademicProgramsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              'Akademik Programlar',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
            SizedBox(height: 20),
            // Buraya liste veya gridview eklenebilir.
          ],
        ),
      ),
    );
  }
}
