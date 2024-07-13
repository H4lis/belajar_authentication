import 'package:booking_tiket_film/pages/home_page.dart';
import 'package:booking_tiket_film/pages/movie_page.dart';
import 'package:booking_tiket_film/pages/profile.page.dart';
import 'package:booking_tiket_film/pages/ticket.page.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_navigation.dart';

class WrapperPage extends StatefulWidget {
  const WrapperPage({
    Key? key,
  }) : super(key: key);

  @override
  State<WrapperPage> createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  int selectedIndex = 0;
  final List<Widget> screens = [
    HomePage(),
    TicketPage(),
    MoviePage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[selectedIndex],
        bottomSheet: BottomNavigationWidget(
          selectedIndex: selectedIndex,
          onTap: (val) {
            setState(() {
              selectedIndex = val;
            });
          },
        ),
      ),
    );
  }
}
