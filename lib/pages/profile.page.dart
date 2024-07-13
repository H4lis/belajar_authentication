import 'package:booking_tiket_film/shared/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Padding(
        padding:
            EdgeInsets.only(right: defaultMargin, left: defaultMargin, top: 36),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/Profile.png",
                        ),
                      )),
                ),
                SizedBox(
                  width: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Angelina",
                      style: whiteTextStyle.copyWith(
                          fontSize: 32, fontWeight: bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/icons/call.png",
                          width: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "(704) 555-0127",
                          style: whiteTextStyle.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/icons/sms.png",
                          width: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "angelina@example.com",
                          style: whiteTextStyle.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/icons/edit.png",
                    width: 24,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 64,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/icons/ticket_2.png",
                  width: 32,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "My ticket",
                  style:
                      whiteTextStyle.copyWith(fontWeight: bold, fontSize: 16),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: greyColor,
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 24),
              child: Divider(
                color: greyDarkColor,
              ),
            ),
            Row(
              children: [
                Image.asset(
                  "assets/icons/shopping_cart.png",
                  width: 32,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Payment history",
                  style:
                      whiteTextStyle.copyWith(fontWeight: bold, fontSize: 16),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: greyColor,
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 24),
              child: Divider(
                color: greyDarkColor,
              ),
            ),
            Row(
              children: [
                Image.asset(
                  "assets/icons/lock.png",
                  width: 32,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Change password",
                  style:
                      whiteTextStyle.copyWith(fontWeight: bold, fontSize: 16),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: greyColor,
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 24),
              child: Divider(
                color: greyDarkColor,
              ),
            ),
            Row(
              children: [
                Image.asset(
                  "assets/icons/logout.png",
                  width: 32,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Logout",
                  style:
                      whiteTextStyle.copyWith(fontWeight: bold, fontSize: 16),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: greyColor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
