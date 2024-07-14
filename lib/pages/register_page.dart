import 'package:booking_tiket_film/pages/login_page.dart';
import 'package:booking_tiket_film/pages/register_page.dart';
import 'package:booking_tiket_film/shared/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/button_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void daftar() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      isLoading = true;
    });
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      if (userCredential.user != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Akun Anda Berhasil Dibuat")),
        );

        // Kirim verifikasi email (jika perlu)
        await userCredential.user!.sendEmailVerification();
        FirebaseAuth.instance.signOut();

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      }
    } on FirebaseAuthException catch (e) {
      String errorMessage;
      if (e.code == 'weak-password') {
        errorMessage = "Password yang digunakan terlalu singkat";
      } else if (e.code == 'email-already-in-use') {
        errorMessage = "Email Anda sudah terdaftar, silahkan login";
      } else {
        errorMessage = "Terjadi kesalahan saat mendaftarkan akun";
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Terjadi kesalahan, tidak dapat mendaftarkan akun")),
      );
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListView(
          children: [
            SizedBox(
              height: 46,
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
              "Hi, Welcome ",
              style: whiteTextStyle.copyWith(
                fontSize: 26,
                fontWeight: semiBold,
              ),
            ),
            Text(
              "Hello there sign up to continue",
              style: whiteTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 39,
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama",
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
                    child: TextFormField(
                      // controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: greyColor, width: 1.5),
                        ),
                        hintText: "Enter Nama",
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
                    child: TextFormField(
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email tidak boleh kosong';
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'Masukkan email yang valid';
                        }
                        return null;
                      },
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
                    child: TextFormField(
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password tidak boleh kosong';
                        }
                        if (value.length < 6) {
                          return 'Password minimal 6 karakter';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Text(
                    "Confirm Password",
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
                    child: TextFormField(
                      controller: confirmPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: greyColor, width: 1.5),
                        ),
                        hintText: "Confirm Password",
                        hintStyle:
                            greyTextStyle.copyWith(fontSize: 13, fontWeight: medium),
                      ),
                      style: greyTextStyle.copyWith(fontSize: 13, fontWeight: medium),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Konfirmasi password tidak boleh kosong';
                        }
                        if (value != passwordController.text) {
                          return 'Password tidak cocok';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            ElevatedButton(
              onPressed: () {
                daftar();
              },
              child: Text("Register",
                  style: blackTextStyle.copyWith(fontSize: 20, fontWeight: bold)),
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 13),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  child: Text(
                    "Sign in,",
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
