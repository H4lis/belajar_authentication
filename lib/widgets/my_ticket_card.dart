import 'package:flutter/material.dart';

import '../shared/theme.dart';

class MyTicketCard extends StatelessWidget {
  const MyTicketCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                image: AssetImage("assets/images/film.png"),
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
                "Avengers: Infinity War",
                style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: bold),
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
    );
  }
}
