import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moviesapp/pages/HomePage.dart';
import 'package:moviesapp/pages/MoviePage.dart';
import 'package:moviesapp/pages/categoryPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0F111D),
      ),
      routes: {
        "/": (context) => HomePage(),
        "categoryPage": (context) => categoryPage(),
        "moviePage": (context) => MoviePage(),
      },
    );
  }
}
