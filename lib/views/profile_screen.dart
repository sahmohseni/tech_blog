import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var fontTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              'assets/images/profile_pic.png',
              height: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/pen_pic.png',
                  scale: 3,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'ویرایش عکس پروفایل',
                  style: fontTheme.headline4,
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'فاطمه امیری',
              style: fontTheme.headline5,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'mohseni.seyedamirhessam@gmail.com',
              style: fontTheme.headline2,
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Color.fromARGB(255, 125, 124, 124),
              indent: 60,
              endIndent: 60,
            ),
            const SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'مقالات مورد علاقه من',
                style: fontTheme.headline2,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color.fromARGB(255, 125, 124, 124),
              indent: 60,
              endIndent: 60,
            ),
            const SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'پادکست های مورد علاقه من',
                style: fontTheme.headline2,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Color.fromARGB(255, 125, 124, 124),
              indent: 60,
              endIndent: 60,
            ),
            const SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'خروج از حساب کاربری',
                style: fontTheme.headline2,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
