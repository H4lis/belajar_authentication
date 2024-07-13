import 'package:booking_tiket_film/shared/theme.dart';
import 'package:flutter/material.dart';

import '../widgets/my_ticket_card.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: blackColor,
        toolbarHeight: 70,
        title: Center(
          child: Text("My Ticket",
              style: whiteTextStyle.copyWith(fontSize: 28, fontWeight: bold)),
        ),
      ),
      backgroundColor: blackColor,
      body: Column(
        children: [
          MyTicketCard(),
          MyTicketCard(),
          MyTicketCard(),
        ],
      ),
    );
  }
}
