import 'package:e_commerce_app/Screens/MyHomePage.dart';
import 'package:e_commerce_app/tabpages/ReviewsPage.dart';
import 'package:e_commerce_app/tabpages/SpecificationsPage.dart';
import 'package:e_commerce_app/tabpages/descriptionPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDescPage  extends StatefulWidget{
  @override
  State<ProductDescPage> createState() => _ProductDescPageState();
}

class _ProductDescPageState extends State<ProductDescPage> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 3, vsync: this);
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
      body:  Column(
          children: [
            Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.grey.shade200
              ),
              child: Container(
                height: 80,
                width: 100,
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
                        Text("(320 Reviews)", style: TextStyle(color: Colors.grey.shade700),),
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
                   /* Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TabBar(
                          indicatorSize: TabBarIndicatorSize.tab,
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.orangeAccent,
                            ),
                            controller: tabController,
                            isScrollable: true,
                            labelPadding: EdgeInsets.symmetric(horizontal: 22),

                            tabs: [
                              Tab(child: Text("Description", style: TextStyle(fontSize: 14),),),
                              Tab(child: Text("Specifications"),),
                              Tab(child: Text("Reviews"),)
                            ]),
                      ),
                    ),*/
                    SizedBox(height: 20,),
                    SizedBox(
                    //  width: double.infinity,
                      height: 200,
                      child: DefaultTabController(length: 3,
                          child: Column(
                          //  crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: TabBar(
                                    indicatorSize: TabBarIndicatorSize.tab,
                                    dividerColor: Colors.white,
                                    indicator: BoxDecoration(
                                      borderRadius: BorderRadius.circular(26),
                                      color: Colors.orangeAccent,
                                    ),
                                    controller: tabController,
                                    isScrollable: true,
                                    tabs: [
                                      Tab(child: Text("Description", style: TextStyle(fontSize: 16),),),
                                      Tab(child: Text("Specifications",style: TextStyle(fontSize: 16),)),
                                      Tab(child: Text("Reviews",style: TextStyle(fontSize: 16),)),
                                    ]),
                              ),
                             /* SizedBox(
                                child: TabBarView(children: [
                                  DescriptionPage(),
                                  SpecificationPage(),
                                  ReviewsPage()
                                ]),
                              )*/
                            ],
                          )),
                    )
                  ]

                ),


              ],
            )


        ]
            ),

    );
  }
}