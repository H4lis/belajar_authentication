// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:booking_tiket_film/pages/detail_film_page.dart';
import 'package:flutter/material.dart';

import '../models/film_model.dart';
import '../shared/theme.dart';

class MyTicketCard extends StatelessWidget {
  List<FilmModel> film;
  MyTicketCard({
    Key? key,
    required this.film,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: List.generate(
        film.length,
        (i) => GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailFilmPage(film: film[i]),
                ));
          },
          child: Container(
            margin: EdgeInsets.only(
                right: defaultMargin, left: defaultMargin, bottom: 16),
            decoration: BoxDecoration(
                color: greyDarkColor, borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                Container(
                  height: 138,
                  width: 99,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      topLeft: Radius.circular(12),
                    ),
                    image: DecorationImage(
                      image: AssetImage(film[i].image),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      film[i].image,
                      style: whiteTextStyle.copyWith(
                          fontSize: 20, fontWeight: bold),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/icons/clock.png",
                          width: 16,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Avengers: Infinity War",
                          style: whiteTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/icons/location.png",
                          width: 16,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Vincom Ocean Park CGV",
                          style: whiteTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
