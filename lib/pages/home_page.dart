import 'package:booking_tiket_film/shared/theme.dart';
import 'package:booking_tiket_film/widgets/film_card.dart';
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
              Row(
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
                        image: AssetImage("assets/images/film.png"),
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: defaultMargin,
                    ),
                    FilmCard(
                      title: "Avatar 2: The Way Of Water",
                      image: "assets/images/film4.png",
                    ),
                    FilmCard(
                      title: "Fox puss in Boots: The last Wish",
                      image: "assets/images/film5.png",
                    ),
                    FilmCard(
                      title: "Ant Man Wasp: Quantumania",
                      image: "assets/images/film6.png",
                    ),
                  ],
                ),
              ),
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
