// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:booking_tiket_film/pages/detail_film_page.dart';
import 'package:flutter/material.dart';

import '../models/film_model.dart';

class FilmNowCard extends StatelessWidget {
  List<FilmModel> film;
  FilmNowCard({
    Key? key,
    required this.film,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailFilmPage(film: film[0]),
            ));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 347,
            width: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/film_now.png"),
              ),
            ),
          ),
          Container(
            height: 440,
            width: 310,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(film[0].image),
              ),
            ),
          ),
          Container(
            height: 347,
            width: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/film_now2.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
