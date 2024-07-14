import 'package:booking_tiket_film/pages/register_page.dart';
import 'package:booking_tiket_film/pages/wrapper_page.dart';
import 'package:booking_tiket_film/shared/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/button_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    bool isLoading = false;

    @override
    void login() async {
      if (emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty) {
        setState(() {
          isLoading = true;
        });

        try {
          UserCredential userCredential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: emailController.text,
                  password: passwordController.text);

          if (userCredential.user != null) {
            setState(() {
              isLoading = false;
            });

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Anda Berhasil Login")),
            );
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => WrapperPage(),
                ));
          }
        } on FirebaseAuthException catch (e) {
          setState(() {
            isLoading = false;
          });

          String errorMessage;
          if (e.code == 'user-not-found') {
            errorMessage = "Pengguna tidak ditemukan untuk email tersebut";
          } else if (e.code == 'wrong-password') {
            errorMessage = "Password yang Anda masukkan salah";
          } else {
            errorMessage = "Terjadi kesalahan, coba lagi nanti";
          }

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(errorMessage)),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Email dan Password Tidak boleh kosong")),
        );
      }
    }

    return Scaffold(
      backgroundColor: blackColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListView(
          children: [
            SizedBox(
              height: 96,
            ),
            Center(
              child: Image.asset(
                "assets/images/logo.png",
                width: 157,
              ),
            ),
            SizedBox(
              height: 47,
            ),
            Text(
              "Welcome Back",
              style: whiteTextStyle.copyWith(
                fontSize: 26,
                fontWeight: semiBold,
              ),
            ),
            Text(
              "Hello there Log in to continue",
              style: whiteTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 39,
            ),
            Text(
              "Email",
              style: whiteTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 55,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: greyColor, width: 1.5),
                  ),
                  hintText: "Enter Email",
                  hintStyle:
                      greyTextStyle.copyWith(fontSize: 13, fontWeight: medium),
                ),
                style: greyTextStyle.copyWith(fontSize: 13, fontWeight: medium),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              "Password",
              style: whiteTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 55,
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: greyColor, width: 1.5),
                  ),
                  hintText: "Enter Password",
                  hintStyle:
                      greyTextStyle.copyWith(fontSize: 13, fontWeight: medium),
                ),
                style: greyTextStyle.copyWith(fontSize: 13, fontWeight: medium),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            ButtonWidget(
              title: "Sing In",
              onPressed: () {
                login();
              },
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style:
                      whiteTextStyle.copyWith(fontWeight: bold, fontSize: 13),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                        ));
                  },
                  child: Text(
                    "Sign up,",
                    style: primaryTextStyle.copyWith(
                      color: primaryColor,
                      fontSize: 13,
                      fontWeight: bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 65,
            )
          ],
        ),
      ),
    );
  }
}
