import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techblog/techblog_colors.dart';
import 'package:techblog/views/home_screen.dart';
import 'package:techblog/views/profile_screen.dart';
import 'package:techblog/views/register_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

final GlobalKey<ScaffoldState> _key = GlobalKey();

class _MainScreenState extends State<MainScreen> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var fontTheme = Theme.of(context).textTheme;
    return Scaffold(
      key: _key,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Image.asset(
              'assets/images/techblog_logo.png',
              scale: 3,
            )),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: ListTile(
                title: Text(
                  'پروفایل کاربری',
                  style: fontTheme.headline2,
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 77, 77, 77),
              indent: 40,
              endIndent: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: ListTile(
                title: Text(
                  'درباره تک بلاگ',
                  style: fontTheme.headline2,
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 77, 77, 77),
              indent: 40,
              endIndent: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: ListTile(
                title: Text(
                  'اشتراک گذاری در تک بلاگ',
                  style: fontTheme.headline2,
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 77, 77, 77),
              indent: 40,
              endIndent: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: ListTile(
                title: Text(
                  'تک بلاگ در گیتهاب',
                  style: fontTheme.headline2,
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 77, 77, 77),
              indent: 40,
              endIndent: 40,
            )
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _key.currentState!.openDrawer();
                });
              },
              child: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            SvgPicture.asset(
              'assets/images/techblog_logo.svg',
              height: 50,
            ),
            const Icon(
              Icons.search,
              color: Colors.black,
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          IndexedStack(
            index: _selectedIndex,
            children: [HomeScreen(), ProfileScreen(), RegisterScreen()],
          ),
          Positioned(
              bottom: 10,
              right: 50,
              left: 50,
              child: HomeButtonNavigation(
                changeScreen: (int value) {
                  setState(() {
                    _selectedIndex = value;
                  });
                },
              ))
        ],
      ),
    );
  }
}

class HomeButtonNavigation extends StatelessWidget {
  final Function(int) changeScreen;
  HomeButtonNavigation({required this.changeScreen});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 9.5;

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: SizedBox(
        height: size.height / 12.2,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                  colors: GradientColors.homeButtonNavigationGradientColor,
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () => changeScreen(0),
                  icon: const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () => changeScreen(2),
                  icon: const Icon(
                    CupertinoIcons.paperclip,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () => changeScreen(1),
                  icon: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
