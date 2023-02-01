import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:techblog/techblog_colors.dart';
import 'package:techblog/views/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: SingleColors.statusBarColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: SingleColors.navigationBarColor,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            textTheme: const TextTheme(
                headline1: TextStyle(
                    fontFamily: 'dana',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                headline2: TextStyle(
                    color: Colors.black,
                    fontFamily: 'dana',
                    fontSize: 12,
                    fontWeight: FontWeight.w300),
                headline3: TextStyle(
                    fontSize: 10,
                    fontFamily: 'dana',
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
                headline4: TextStyle(
                    fontFamily: 'dana',
                    fontSize: 12,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w300),
                headline5: TextStyle(
                    color: SingleColors.primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'dana'),
                headline6: TextStyle(
                    fontFamily: 'dana',
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.grey))),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('fa', 'IR'),
        ],
        home: SplashScreen());
  }
}
