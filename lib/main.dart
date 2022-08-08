import 'package:flutter/material.dart';
import 'package:flutter_application_1/PAGES/home_page.dart';
import 'package:flutter_application_1/PAGES/signup_page.dart';
import 'package:flutter_application_1/Utilities/routess.dart';
import 'package:flutter_application_1/PAGES/login_page.dart';
import 'package:flutter_application_1/Widgets/theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      // primaryTextTheme: GoogleFonts.latoTextTheme(),
      routes: {
        "/": (context) => const HomePage(),
        MyRoute.loginRoute: (context) => const LoginPage(),
        MyRoute.homeRoute: (context) => const HomePage(),
        MyRoute.signupRoute: (context) => const SignupPage(),
      },
    );
  }
}
