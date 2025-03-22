
import 'package:flutter/material.dart';
import 'package:fruitables/view_model/ratings/rating_vm.dart';
import 'package:provider/provider.dart';

class RatingDialog extends StatelessWidget {
  const RatingDialog({super.key});

  @override
  Widget build(BuildContext context) {
   int selectedRating = context.watch<RatingProvider>().rating;

    return Dialog(
       backgroundColor: Colors.transparent,
      child: Container(
        width: 300,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Do you like the app?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 8),
            Text(
              "Let us know your experience",
              style: TextStyle(color: Colors.grey[800]),
            ),
            SizedBox(height: 12),
      
          
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return IconButton(
                  icon: Icon(
                    index < selectedRating ? Icons.star : Icons.star_border,
                    color: const Color.fromARGB(255, 231, 209, 7),
                    size: 32,
                  ),
                  onPressed: () {
                    context.read<RatingProvider>().setRating(index + 1);
                  },
                );
              }),
            ),
            SizedBox(height: 6),
      
            
      
            
         ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("Rate Us",style: TextStyle(color: Colors.black),)),
            SizedBox(height: 6),
      
            
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Maybe Later", style: TextStyle(color: Colors.grey[800])),
            ),
          ],
        ),
      ),
    
    );
  }
}