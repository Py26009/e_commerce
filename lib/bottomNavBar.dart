import 'package:e_commerce_app/AccountPage.dart';
import 'package:e_commerce_app/MyHomePage.dart';
import 'package:e_commerce_app/WishList.dart';
import 'package:e_commerce_app/cartPage.dart';
import 'package:e_commerce_app/settingsPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottomNavBar extends StatefulWidget{
  @override
  State<bottomNavBar> createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  int selectedIndex = 0;

  List<Widget> navTo = [
     SettingsPage(),
     WishList(),
     MyHomePage(),
     CartPage(),
    AccountPage()
  ];


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: navTo[selectedIndex],
     bottomNavigationBar: BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
       BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
       BottomNavigationBarItem(icon: Container(
             width: 50,
             height: 50,
             decoration: BoxDecoration(
             color: Colors.orangeAccent,
             borderRadius: BorderRadius.circular(24),
    ),
            child: Icon(Icons.home, color: Colors.white,),
     ),
             label: " "),
       BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
       BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: ""),

            ],
         selectedItemColor: Colors.orangeAccent.shade200,
       unselectedItemColor: Colors.grey,
       currentIndex: selectedIndex,
       onTap: (value){
       selectedIndex= value;
       setState(() {

       });
       },
    ),


    );





  }
}