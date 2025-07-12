import 'package:flutter/material.dart';

void main() => runApp(AlertKalingaApp());

class AlertKalingaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alert Kalinga',
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<String> menuItems = [
    "Home",
    "Weather Info",
    "Emergency Tips",
    "Hotlines",
    "Evacuation Map"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alert Kalinga")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              child: Text("Menu", style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ...menuItems.map((item) => ListTile(title: Text(item))),
          ],
        ),
      ),
      body: Center(child: Text("Welcome to Alert Kalinga")),
    );
  }
}