// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projectmobile/LauncherPage.dart';
import 'package:projectmobile/model/movie_modal.dart';
import 'package:projectmobile/pages/CategoryPage.dart';
import 'package:projectmobile/pages/FavoritePage.dart';
import 'package:projectmobile/pages/HomePage.dart';
import 'package:projectmobile/pages/MoviePage.dart';
import 'package:projectmobile/pages/MoviePage2.dart';
import 'package:projectmobile/pages/MoviePage3.dart';
import 'package:projectmobile/pages/MoviePage4.dart';
import 'package:projectmobile/pages/MoviePage5.dart';
import 'package:projectmobile/pages/ProfileView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // To hide status bar and below buttons
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0F111D),
      ),
      routes: {
        "/": (context) => LauncherPage(),
        "homePage": (context) => HomePage(),
        "categoryPage": (context) => CategoryPage(),
        "moviePage": (context) => MoviePage(movieModal: movie[0]),
        "moviePage2": (context) => MoviePage2(movieModal: movie[1]),
        "moviePage3": (context) => MoviePage3(movieModal: movie[2]),
        "moviePage4": (context) => MoviePage4(movieModal: movie[3]),
        "moviePage5": (context) => MoviePage5(movieModal: movie[4]),
        "favoritePage": (context) => FavoritePage(),
        "ProfileView": (context) => ProfileView(),
      },
    );
  }
}
