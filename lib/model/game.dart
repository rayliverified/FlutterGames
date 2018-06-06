import 'package:meta/meta.dart';

class Game {
  Game({
    @required this.name,
    @required this.box,
    this.cover,
    this.description,
    this.platforms,
    this.rating,
    this.screenshots,
  });

  final String name;
  final String box;
  final String cover;
  final String description;
  final List<String> platforms;
  final double rating;
  final List<String> screenshots;

  String getPlatforms() {
    String platformText = "";
    if (platforms.length > 1) {
      for (int i = 0; i < platforms.length; i++) {
        if (i == 0) {
          platformText = platforms[0];
        } else {
          platformText = platformText + " | " + platforms[i];
        }
      }
    } else if (platforms.length == 1) {
      platformText = platforms[0];
    }

    return platformText;
  }
}
