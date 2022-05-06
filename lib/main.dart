import 'package:flutter/material.dart';
import 'package:furniture_app/screens/main/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme.apply(bodyColor: Colors.black),
        ),
      ),
      home: MainScreen(),
    );
  }
}
