import 'package:flutter/cupertino.dart';

class ReviewsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Reviews Here!!",style:TextStyle(fontSize: 18))
        ],
      ),
    );
  }
}