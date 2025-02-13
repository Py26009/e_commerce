import 'package:flutter/cupertino.dart';

class SpecificationPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Specifications here!!", style: TextStyle(fontSize: 18),)
      ],
    ),);
  }
}