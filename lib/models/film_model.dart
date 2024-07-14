class FilmModel {
  final String image;
  final String title;

  FilmModel({
    required this.image,
    required this.title,
  });
}

List<FilmModel> comingSoon = [
  FilmModel(
    title: "Avatar 2: The Way Of Water",
    image: "assets/images/film4.png",
  ),
  FilmModel(
    title: "Fox puss in Boots: The last Wish",
    image: "assets/images/film5.png",
  ),
  FilmModel(
    title: "Ant Man Wasp: Quantumania",
    image: "assets/images/film6.png",
  ),
];

List<FilmModel> nowPlaying = [
  FilmModel(
    title: "Avengers - Infinity War",
    image: "assets/images/film.png",
  ),
];
List<FilmModel> myTicket = [
  FilmModel(
    title: "Avengers - Infinity War",
    image: "assets/images/film.png",
  ),
];
