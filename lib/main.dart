import 'package:flutter/material.dart';
import 'package:fruitables/view/dashboard/dashboard.dart';
import 'package:fruitables/view/onboarding/welcome_screen.dart';
import 'package:fruitables/view_model/cart/cart_provider.dart';
import 'package:fruitables/view_model/ratings/rating_vm.dart';
import 'package:fruitables/view_model/wishlist/wishlist_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RatingProvider()),
         ChangeNotifierProvider(create: (_) => WishlistProvider()),
          ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Fruitables',
          home: WelcomeScreen (),
        ),
      
    );
  }
}
