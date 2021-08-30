import 'package:altshulers_website/constants.dart';
import 'package:altshulers_website/screens/home/home_screen.dart';
import 'package:altshulers_website/screens/projects/project_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        canvasColor: Colors.transparent,
        textTheme: GoogleFonts.quicksandTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              headline6: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.15),
              headline5: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w400),
              headline4: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.25),
              subtitle1: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.15),
              bodyText1: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5),
              bodyText2: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.25),
            ),
      ),
      home: HomeScreen(),
      routes: {
        '/project_info': (context) => ProjectScreen(),
      },
    );
  }
}
