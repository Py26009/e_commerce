import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        leading: Icon(Icons.settings),
        backgroundColor: Colors.orangeAccent.shade200,
      ),
    );
  }
}