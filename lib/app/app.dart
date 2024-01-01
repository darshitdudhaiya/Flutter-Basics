import 'package:demo/app/home_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo",
      home: const HomeView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.dmSans().fontFamily),
    );
  }
}
