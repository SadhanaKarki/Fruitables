import 'package:flutter/material.dart';
import 'package:fruitables/view/dashboard/dashboard.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   final screenSize = MediaQuery.of(context).size;
   final screenWidth = screenSize.width;
   // final screenHeight = screenSize.height;

    return Scaffold(
      body:Container(
        decoration: const BoxDecoration(
           color: Colors.white,
         
        ),
        width:screenWidth ,
       
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             SizedBox(height: 40,),
             Text('FRUITABLES',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600,color: const Color.fromARGB(255, 43, 177, 47)),),
            Text("Welcome to Fruitables, Shop it fresh!"),
             SizedBox(height: 60,),
            Image.asset('assets/girlwithbasket.jpg', height: 350,width: 250),
             SizedBox(height: 150,),
            SizedBox(
              width: 301,
              height: 40,
              child: ElevatedButton(
                onPressed: (){
                   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:  const Color.fromARGB(255, 43, 177, 47),
                  foregroundColor: Colors.white
                ),
                 child: const Text("Continue")),
            )
          ],
        ),
      )
    );
  }
}