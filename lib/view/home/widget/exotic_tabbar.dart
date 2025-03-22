import 'package:flutter/material.dart';
import 'package:fruitables/model/product_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ExoticTabbar extends StatelessWidget {
  const ExoticTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, 
        crossAxisSpacing: 10, 
        mainAxisSpacing: 15, 
        childAspectRatio: 1.9 / 2.4, 
      ),
      itemCount: exoticList.length, 
      itemBuilder: (context, index) {
        return CardSample(exotic: exoticList[index]);
      },
    );
  }
}

class CardSample extends StatefulWidget {
  final Exotic exotic;

  const CardSample({super.key,  required this.exotic});

  @override
  State<CardSample> createState() => _CardSampleState();
}

class _CardSampleState extends State<CardSample> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    // Check if the current product is in the list of favorite products
    loadFavoriteStatus();
  }

  Future<void> loadFavoriteStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final favoriteProducts = prefs.getStringList('favorite_products') ?? [];

    setState(() {
      isFavorite = favoriteProducts.contains(widget.exotic.id);
    });
  }

  Future<void> toggleFavorite() async {
    final prefs = await SharedPreferences.getInstance();
    final favoriteProducts = prefs.getStringList('favorite_products') ?? [];

    if (isFavorite) {
      // Remove the product from the favorites
      favoriteProducts.remove(widget.exotic.id);
    } else {
      // Add the product to the favorites
      favoriteProducts.add(widget.exotic.id);
    }

    // Save the updated list of favorite products
    await prefs.setStringList('favorite_products', favoriteProducts);

    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: SizedBox(
        height: 200,
        width: 200,

        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                widget.exotic.imagePath,
                fit: BoxFit.cover,
                width: 200,
                height: 145,
              ),
            ),

            Positioned(
              bottom: 2,
              right: 35,
              child: IconButton(
                onPressed: toggleFavorite,
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  size: 25,
                  color: Colors.red,
                ),
              ),
            ),

            Positioned(
              left: 10,
              bottom: 40,
              child: Text(
                widget.exotic.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: Color.fromARGB(255, 81, 79, 79),
                ),
              ),
            ),

            Positioned(
              left: 10,
              bottom: 7,
              child: Text(
                widget.exotic.price,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),

            Positioned(
              bottom: 0,
              right: 0,
              child: IconButton(
                onPressed: () {
                  setState(() {});
                },
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 25,
                  color: const Color.fromARGB(255, 86, 84, 84),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
