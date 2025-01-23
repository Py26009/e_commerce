import 'package:e_commerce_app/productDescPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> items = [
  {"title": "Beauty", 'imgUrl' : "https://th.bing.com/th/id/OIP.qcdsMk2RRgLyEjYxu9sFdwHaFj?rs=1&pid=ImgDetMain" },
  {'title': "Jewellery", 'imgUrl': "https://www.pngarts.com/files/4/Fashion-Accessory-PNG-Free-Download.png"},
  {'title': "Women fashion ", 'imgUrl':"https://www.pngmart.com/files/15/Fashion-Woman-PNG-Transparent.png"},
  {'title': "Watches", 'imgUrl':"https://clipground.com/images/ladies-watch-png-7.png"},
  {'title':"Men fashion", 'imgUrl': "https://wallpapers.com/images/featured-full/mens-fashion-png-nou41acklwg9b65n.png"},
  {'title': "Shoes", 'imgUrl': "https://th.bing.com/th/id/OIP.tJQjxbLRRaEt9B4OB546kAHaHw?rs=1&pid=ImgDetMain"},
  {'title': "Electronics", 'imgUrl': "https://th.bing.com/th/id/OIP._CpI19ftpaxaoR5zBBr3_AHaC1?rs=1&pid=ImgDetMain"}
];

List<Map<String, dynamic>>  categories = [
  {"pname" : "Wireless Headphone", 'imgUrl':"https://spy.com/wp-content/uploads/2020/08/61IRjjz7S7L._AC_SL1500_.jpg", "price":"\$120.00"},
  {"pname": "Women Sweater", 'imgUrl': "https://i.pinimg.com/originals/f5/ed/89/f5ed89d9a71495b0b48a04224dbfc6d5.jpg", "price":"\$70.00"},
  {"pname": "Smart Watch", 'imgUrl' :"https://i5.walmartimages.com/asr/f48530e4-41b7-4c57-818d-54d45221ac25.66313cf6a669f875e8d137d7ac6c7d80.png", "price":"\$55.00"},
  {"pname": "Ear Rings", 'imgUrl':"https://th.bing.com/th/id/OIP.s8-VDKjfTSbIe9U0udKZaQHaHa?rs=1&pid=ImgDetMain", "price":"\$20"}
];

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    /*List<Map<String, dynamic>> items = [
      {"title": "Beauty", 'imgUrl' : "https://th.bing.com/th/id/OIP.qcdsMk2RRgLyEjYxu9sFdwHaFj?rs=1&pid=ImgDetMain" },
      {'title': "Jewellery", 'imgUrl': "https://www.pngarts.com/files/4/Fashion-Accessory-PNG-Free-Download.png"},
      {'title': "Women fashion ", 'imgUrl':"https://www.pngmart.com/files/15/Fashion-Woman-PNG-Transparent.png"},
      {'title': "Watches", 'imgUrl':"https://clipground.com/images/ladies-watch-png-7.png"},
      {'title':"Men fashion", 'imgUrl': "https://wallpapers.com/images/featured-full/mens-fashion-png-nou41acklwg9b65n.png"},
      {'title': "Shoes", 'imgUrl': "https://th.bing.com/th/id/OIP.tJQjxbLRRaEt9B4OB546kAHaHw?rs=1&pid=ImgDetMain"},
      {'title': "Electronics", 'imgUrl': "https://th.bing.com/th/id/OIP._CpI19ftpaxaoR5zBBr3_AHaC1?rs=1&pid=ImgDetMain"}
    ];

    List<Map<String, dynamic>>  categories = [
      {"pname" : "Wireless Headphone", 'imgUrl':"https://spy.com/wp-content/uploads/2020/08/61IRjjz7S7L._AC_SL1500_.jpg", "price":"\$120"},
      {"pname": "Women Sweater", 'imgUrl': "https://i.pinimg.com/originals/f5/ed/89/f5ed89d9a71495b0b48a04224dbfc6d5.jpg", "price":"\$70"},
      {"pname": "Smart Watch", 'imgUrl' :"https://i5.walmartimages.com/asr/f48530e4-41b7-4c57-818d-54d45221ac25.66313cf6a669f875e8d137d7ac6c7d80.png", "price":"\$55"},
      {"pname": "Ear Rings", 'imgUrl':"https://th.bing.com/th/id/OIP.s8-VDKjfTSbIe9U0udKZaQHaHa?rs=1&pid=ImgDetMain", "price":"\$20"}
    ];*/



    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
           title: Text("Shop Now", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purple),),
          ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: Colors.grey.withOpacity(0.2)
                      ),
                      child: Icon(Icons.more_horiz_rounded),
                    ),
                  ),
                    SizedBox(width: 270,),
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: Colors.grey.withOpacity(0.2)
                        ),
                        child: Icon(Icons.notifications_none_rounded)
                    ),
                  ]
                ),
                SizedBox(height: 20,),
                Container(
                  height: 50,
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      color: Colors.grey.withOpacity(0.2)
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.search, size: 28, color: Colors.black.withOpacity(0.6),),
                      SizedBox(
                        width: 40,
                      ),
                      Text("Search...", style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.6) ),),
                      SizedBox(
                        width: 150,
                      ),
                      Text("|", style: TextStyle(fontSize: 32,color: Colors.black.withOpacity(0.4) ),),
                      SizedBox(width: 6,),
                      Icon(Icons.list_outlined,color: Colors.black.withOpacity(0.6) )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 240,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey.withOpacity(0.4)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(" Super Sale \n Discount  \n Upto 50%", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      TextButton(onPressed: (){},
                          child: Container(
                         height: 45,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: Colors.orangeAccent
                            ),
                            child: Center(child: Text("Shop now", style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ))
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                SizedBox(height: 60,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (_,index){
                    return Column(
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                            border: Border.all(color: Colors.black12)
                          ),
                          child: Image.network(items[index]['imgUrl'], fit: BoxFit.fill,),
                        ),
                      //  Text(items[index]['title']),
                      ],
                    );
                    },
                    separatorBuilder: (_,index)=> SizedBox(width: 30,),
                    itemCount: items.length),),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("  Special for you", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                    SizedBox(width: 140,),
                    Text("See all", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue))
                  ],
                ),
                SizedBox(height: 20,),
                SizedBox(height:180 ,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                      childAspectRatio: 5/4,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                     ),
                  itemCount: categories.length,
                  shrinkWrap: true,
                  itemBuilder: (_,index){
                      return Container(
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                    color:  Colors.black26, width: 2)),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Container(
                         width: 80,
                        height: 80,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black26),
                    child:  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDescPage()));
                      },
                        child: Image.network(categories[index]['imgUrl'], fit: BoxFit.fill,)),
                    ),
                      Text(categories[index]['pname'], style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Text(categories[index]['price'],style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold), ),
                          SizedBox(width: 65,),
                          Icon(Icons.circle, color: Colors.red),
                          Icon(Icons.circle, color: Colors.blue),
                          Icon(Icons.circle, color: Colors.black),
                        ],
                      )
                    ]

                    ),


                      );
                    },
                ),)
              ],
            ),
          ),
        ),
      ),
    );

  }



}