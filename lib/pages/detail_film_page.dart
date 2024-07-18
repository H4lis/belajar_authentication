import 'package:booking_tiket_film/pages/selecr_seat_page.dart';
import 'package:booking_tiket_film/shared/theme.dart';
import 'package:booking_tiket_film/widgets/bottom_navigation.dart';
import 'package:booking_tiket_film/widgets/button_widget.dart';
import 'package:flutter/material.dart';

import '../models/film_model.dart';

class DetailFilmPage extends StatelessWidget {
  final FilmModel film;
  const DetailFilmPage({super.key, required this.film});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 260,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(film.image),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 16,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: whiteColor,
                    )),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 14,
                ),
                Text(
                  film.title,
                  style:
                      whiteTextStyle.copyWith(fontWeight: bold, fontSize: 24),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "2h29m • 16.12.2022",
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
                Divider(
                  color: greyColor,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Movie genre:",
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Censorship:",
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Language:",
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Action, adventure, sci-fi",
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "13+",
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "English",
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: bold),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  "Storyline",
                  style:
                      whiteTextStyle.copyWith(fontWeight: bold, fontSize: 24),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos....",
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonWidget(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectSeat(),
                      ),
                    );
                  },
                  title: "Continue",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
