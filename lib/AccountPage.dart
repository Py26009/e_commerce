import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manage your account"),
        leading: Icon(Icons.account_circle_outlined),
        backgroundColor: Colors.orange.shade300,
      ),
    );
  }
}