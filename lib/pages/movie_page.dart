import 'package:flutter/material.dart';

import '../shared/theme.dart';

class MoviePage extends StatefulWidget {
  MoviePage({super.key});

  @override
  State<MoviePage> createState() => _PesananPage2State();
}

class _PesananPage2State extends State<MoviePage> {
  final List<String> tabs = [
    'Now playing',
    'Coming soon',
  ];

  int _activeTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: blackColor,
        title: Text(
          "Pesanan Saya",
          style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          children: [
            SizedBox(
              height: 18,
            ),
            Container(
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: greyDarkColor,
              ),
              child: Row(
                children: List.generate(
                  tabs.length,
                  (i) => Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _activeTabIndex = i;
                        });
                      },
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                          color: _activeTabIndex == i
                              ? primaryColor
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            tabs[i],
                            style: whiteTextStyle.copyWith(
                              color:
                                  _activeTabIndex == i ? blackColor : greyColor,
                              fontSize: 18,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    width: 191,
                    height: 267,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: AssetImage("assets/images/film.png"))),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
