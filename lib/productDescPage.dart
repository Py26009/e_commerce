import 'package:e_commerce_app/MyHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDescPage  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.grey.shade200
              ),
              child: Icon(Icons.share),
            ),
          ),
      SizedBox(width: 10,),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey.shade200,
          ),
          child: Icon(Icons.favorite_border_outlined),
        ),
      ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 280,
            width: 420,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.grey.shade200
            ),
            child: Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.grey.shade200
              ),
              child: Image.network(categories[0]["imgUrl"], fit: BoxFit.contain ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(categories[0]['pname'], style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(categories[0]['price'],style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Container(
                        height: 22,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Colors.orangeAccent.shade200
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.star, color: Colors.white, size: 14,),
                            Text("4.8", style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      Text("(320 Reviews)", style: TextStyle(color: Colors.grey.shade500),),
                      SizedBox(width: 90,),
                      Text("Seller: Tariqul isalm",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold) )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("   Color", style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold) ,),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 11,),
                      Icon(Icons.circle, color: Colors.red, size: 38,),
                      SizedBox(width: 6,),
                      Icon(Icons.circle, color: Colors.black, size: 38,),
                      SizedBox(width: 6,),
                      Icon(Icons.circle, color: Colors.blue, size: 38,),
                      SizedBox(width: 6,),
                      Icon(Icons.circle, color: Colors.brown, size: 38,),
                      SizedBox(width: 6,),
                      Icon(Icons.circle, color: Colors.grey, size: 38,),
                    ],
                  ),
                  SizedBox(height: 20,),
                ],
              ),


            ],
          )
        ],

      ),

    );
  }
}