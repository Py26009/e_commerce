import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart", style: TextStyle(color: Colors.white),),
        leading: Icon(Icons.shopping_cart, color: Colors.white,),
        backgroundColor: Colors.orangeAccent.shade200,
      ),
    );
  }
}