import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
      ),
      body: Column(children: [
        Center(
          child: Container(
            child: Text("my cart"),
          ),
        ),

        Container(
                  
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
      ],),
    );
  }
}