import 'package:flutter/material.dart';

import '../shared/theme.dart';

class FilmCard extends StatelessWidget {
  final image;
  final title;

  const FilmCard({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16, bottom: 10),
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
                image: AssetImage(image),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: bold),
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
    );
  }
}
