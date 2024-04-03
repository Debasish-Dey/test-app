import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('Hi, Lex'),
          actions: [
            Icon(Icons.person),
            SizedBox(width: 20),
            Icon(Icons.favorite_border),
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Living Room'),
                Text('Dining'),
                Text('Kitchen'),
              ],
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.wb_cloudy),
                title: Text('28°C Cloudy'),
                subtitle: Text(
                  '27 Mar 2022\nJagakarsa, Jakarta',
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            ListTile(
              leading: Image.network(
                  '<URL_TO_YOUR_LIGHTNING_ICON>'), // Replace with actual URL or asset path
              title: Text(
                '+35%\n23.5 kWh',
                textAlign: TextAlign.right,
              ),
              subtitle: Text(
                'Energy Saving',
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.lightbulb),
                    Text("Lightning"),
                    Switch(
                      value: false,
                      onChanged: (value) {
                        // Implement actual logic for switch state change
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.ac_unit),
                    Text("AC"),
                    Switch(
                      value: false,
                      onChanged: (value) {
                        // Implement actual logic for switch state change
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
