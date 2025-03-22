import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RatingProvider extends ChangeNotifier {
  int _rating = 0;

  int get rating => _rating;

  RatingProvider() {
    _loadRating();
  }


  Future<void> _loadRating() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _rating = prefs.getInt('user_rating') ?? 0;
    notifyListeners();
  }


  Future<void> setRating(int newRating) async {
    _rating = newRating;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('user_rating', newRating);
    notifyListeners();
  }
}
