import 'package:flutter/material.dart';
import 'package:fruitables/view/cart/cart.dart';
import 'package:fruitables/view/home/home_screen.dart';
import 'package:fruitables/view/more/more_screen.dart';

class Dashboard extends StatefulWidget {
  
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
   int _selectedIndex = 0;
   
   final List<Widget> _pages = [
    const HomeScreen(),
     const CartScreen(), 
    const MoreScreen(), 
  ];

   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.grey[200],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey[900],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Your cart"),
      
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
        ],
      ),
    );
  }
}