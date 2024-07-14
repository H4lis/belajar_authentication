import 'package:booking_tiket_film/models/film_model.dart';
import 'package:booking_tiket_film/shared/theme.dart';
import 'package:booking_tiket_film/widgets/film_card.dart';
import 'package:booking_tiket_film/widgets/film_now_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: blackColor,
          automaticallyImplyLeading: false,
          toolbarHeight: 160,
          title: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, Angelina",
                        style: whiteTextStyle.copyWith(fontSize: 18),
                      ),
                      Text(
                        "Welcome back",
                        style: whiteTextStyle.copyWith(
                            fontSize: 26, fontWeight: bold),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    "assets/icons/notifikasi.png",
                    width: 36,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 48,
                child: TextField(
                  style: whiteTextStyle.copyWith(fontSize: 16),
                  decoration: InputDecoration(
                    fillColor: greyDarkColor,
                    filled: true,
                    prefixIcon: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Icon(
                          Icons.search,
                          color: whiteColor,
                        )),
                    hintText: "Search",
                    hintStyle: greyTextStyle.copyWith(fontSize: 16),
                    contentPadding: const EdgeInsets.all(12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: blackColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 6,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Now playing",
                      style: whiteTextStyle.copyWith(
                          fontWeight: bold, fontSize: 24),
                    ),
                    Text(
                      "See all",
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, decoration: TextDecoration.underline),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FilmNowCard(film: nowPlaying),
              SizedBox(
                height: 8,
              ),
              Text(
                "Avengers - Infinity War",
                style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 24),
              ),
              Text(
                "2h29m • Action, adventure, sci-fi",
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 8,
                width: 61,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: primaryColor),
              ),
              SizedBox(
                height: 26,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Coming Soon",
                      style: whiteTextStyle.copyWith(
                          fontWeight: bold, fontSize: 24),
                    ),
                    Text(
                      "See all",
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, decoration: TextDecoration.underline),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FilmCard(film: comingSoon),
              SizedBox(
                height: 90,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
