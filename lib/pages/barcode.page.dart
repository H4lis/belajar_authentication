import 'package:booking_tiket_film/pages/wrapper_page.dart';
import 'package:flutter/material.dart';

import '../shared/theme.dart';
import '../widgets/button_widget.dart';

class MyTicketPage extends StatelessWidget {
  const MyTicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: blackColor,
        centerTitle: true,
        title: Text(
          "My Ticket",
          style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset("assets/images/barcode.png"),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: ButtonWidget(
              title: "Back",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WrapperPage(),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
