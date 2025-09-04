import 'package:flutter/material.dart';

class MovieProvider extends ChangeNotifier {
  final List<String> _movieList = [
    'The Shawshank Redemption',
    'The Godfather',
    'The Dark Night',
    'The Godfather:Part II',
    'The Lord of the Rings: The Return of the King',
    'Pulp Fiction',
    'Schindlers List',
    'Prison Break',
  ];

  List<String> get movieList => _movieList;

  List<String> loadMovies() {
    return _movieList;
  }
}
