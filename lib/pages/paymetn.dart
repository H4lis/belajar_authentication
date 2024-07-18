import 'package:booking_tiket_film/models/film_model.dart';
import 'package:booking_tiket_film/pages/barcode.page.dart';
import 'package:flutter/material.dart';

import '../shared/theme.dart';
import '../widgets/button_widget.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/payment.png"),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: ButtonWidget(
                title: "Lanjutkan",
                onPressed: () {
                  _showConfirmationDialog(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: blackColor,
      centerTitle: true,
      title: Text(
        "Pembayaran",
        style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          title: Text(
            "Pembelian Berhasil",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          content: Text(
            "Selamat! Anda berhasil membeli tiket. Silakan tunjukkan tiket ini kepada kasir.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                "OK",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 16,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyTicketPage(),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
