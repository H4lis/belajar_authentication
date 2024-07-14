// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:booking_tiket_film/pages/detail_film_page.dart';
import 'package:flutter/material.dart';

import 'package:booking_tiket_film/models/film_model.dart';

import '../shared/theme.dart';

class FilmCard extends StatelessWidget {
  List<FilmModel> film;

  FilmCard({
    Key? key,
    required this.film,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
        film.length,
        (i) => GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailFilmPage(film:film[i]   ),
                ));
          },
          child: Container(
            margin: EdgeInsets.only(
                right: 16, bottom: 10, left: i == 0 ? defaultMargin : 0),
            width: 173,
            child: Column(
              children: [
                Container(
                  height: 244,
                  width: 173,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(film[i].image),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  film[i].title,
                  style:
                      primaryTextStyle.copyWith(fontSize: 16, fontWeight: bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/calendar.png",
                      width: 16,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Adventure, Sci-fi",
                      style: whiteTextStyle.copyWith(fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  height: 2.5,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/Movie.png",
                      width: 16,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "20.12.2022",
                      style: whiteTextStyle.copyWith(fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
