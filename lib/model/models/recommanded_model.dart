class SongModel {
  String imagePath, title, subtitle, soundPath;
  bool isFavorite;

  SongModel({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.isFavorite = false,
    required this.soundPath,
  });
}
