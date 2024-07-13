
import 'package:booking_tiket_film/pages/wrapper_page.dart';
import 'package:booking_tiket_film/shared/theme.dart';
import 'package:booking_tiket_film/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blackColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/images/logo.png",
                width: 153,
              ),
              Spacer(),
              Center(
                child: Container(
                  width: 329,
                  height: 329,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      32,
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/images/avengers.png"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  "MBooking hello!",
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: bold,
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Center(
                child: Text(
                  "Enjoy your favorite movies",
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              Spacer(),
              ButtonWidget(
                title: "Sing In",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WrapperPage(),
                      ));
                },
              ),
              SizedBox(
                height: 16,
              ),
              ButtonWidget(
                onButPrimary: false,
                title: "Sing Up",
                onPressed: () {},
              ),
              SizedBox(
                height: 32,
              ),
              Center(
                child: Container(
                  width: 320,
                  child: Text(
                    "By sign in or sign up, you agree to our Terms of Service and Privac y Policy",
                    style: greyTextStyle.copyWith(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
