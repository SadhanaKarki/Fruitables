import 'package:flutter/material.dart';
import 'package:fruitables/view/home/widget/exotic_tabbar.dart';
import 'package:fruitables/view/home/widget/fruits_tabbar.dart';
import 'package:fruitables/view/home/widget/vegetables_tabbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final screenSize = MediaQuery.of(context).size;
   final screenWidth = screenSize.width;
   final screenHeight = screenSize.height;
    return DefaultTabController(
      length: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          appBar: AppBar(
            title: Text("Home",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined,color: Colors.grey[900],)),
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined,color: Colors.grey[900],))
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                
                Container(
                  height: screenHeight*0.11,
                  width: double.infinity,
                  
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 122, 204, 95),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
            
                    children: [
                      Text(
                        "Seasonal Offer",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        "Flat 10% off on every item",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
            
               
                TabBar(
                  tabs: [
                    Tab(text: "Fruits"),
                    Tab(text: "Vegetables"),
                    Tab(text: "Exotic"),
                    
                  ],
                  labelColor: Colors.green,
                  labelStyle: TextStyle(fontWeight: FontWeight.w700),
                  unselectedLabelColor: const Color.fromARGB(255, 60, 59, 59),
                  indicatorColor: Colors.green,
                  indicator: null,
                  dividerColor: Colors.white,
                ),
            
                SizedBox(
                  height: screenHeight*0.6,
                  //margin: EdgeInsets.only(left: 15, right: 15),
                  child: TabBarView(
                    children: [
                      Center(child: FruitsTabbar()),
            
                      Center(child: VegetablesTabbar()),
            
                      Center(child: ExoticTabbar()),
            
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
