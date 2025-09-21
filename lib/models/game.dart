import 'package:flutter_games/utils/dummy_data.dart';

class Game {
  final String title;
  final String image;
  final double price;
  final double rating;
  final String description;
  final List<String> screenshots;

  Game({
    required this.title,
    required this.image,
    required this.price,
    required this.rating,
    required this.description,
    required this.screenshots,
  });

  static List<Game> toList() {
    return dummyGames.map((item) {
      return Game(
        title: item['title'] as String,
        image: item['image'] as String,
        price: item['price'] as double,
        rating: item['rating'] as double,
        description: item['description'] as String,
        screenshots: List<String>.from(item['screenshots'] as List),
      );
    }).toList();
  }
}
