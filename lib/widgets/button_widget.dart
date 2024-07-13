// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:booking_tiket_film/shared/theme.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  bool onButPrimary;
  final title;
  final Function() onPressed;
  ButtonWidget({
    Key? key,
    required this.onPressed,
    this.onButPrimary = true,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: onButPrimary
            ? blackTextStyle.copyWith(fontSize: 20, fontWeight: bold)
            : whiteTextStyle.copyWith(fontSize: 20, fontWeight: bold),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: onButPrimary ? primaryColor : Colors.transparent,
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          side: onButPrimary
              ? BorderSide(color: Colors.transparent)
              : BorderSide(width: 1, color: whiteColor),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
