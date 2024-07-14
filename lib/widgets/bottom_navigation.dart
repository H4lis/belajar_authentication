import 'package:flutter/material.dart';

import '../shared/theme.dart';

class BottomNavigationWidget extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  BottomNavigationWidget({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  final List<String> itemBar = [
    'Home',
    'Ticket',
    'Movie',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 15),
      color: blackColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          itemBar.length,
          (i) => GestureDetector(
            onTap: () {
              onTap(i);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/icons/${itemBar[i]}' +
                      (i == selectedIndex ? '_active' : '') +
                      '.png',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  itemBar[i],
                  style: i == selectedIndex
                      ? primaryTextStyle.copyWith(
                          fontSize: 11, fontWeight: bold)
                      : greyTextStyle.copyWith(fontSize: 11, fontWeight: bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
