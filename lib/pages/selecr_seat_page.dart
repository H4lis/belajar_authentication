import 'package:booking_tiket_film/pages/paymetn.dart';
import 'package:flutter/material.dart';

import '../shared/theme.dart';
import '../widgets/button_widget.dart';

class SelectSeat extends StatelessWidget {
  const SelectSeat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        backgroundColor: blackColor,
        centerTitle: true,
        title: Text(
          "Select Seat",
          style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/lamp.png"),
            Image.asset("assets/images/kursi.png"),
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/jam.png"),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/harga.png",
                    height: 45,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonWidget(
                    title: "Buy Ticket",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Payment(),
                          ));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
