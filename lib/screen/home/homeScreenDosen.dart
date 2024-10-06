import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:elearning/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenDosen extends StatefulWidget {
  const HomeScreenDosen({super.key});

  @override
  State<HomeScreenDosen> createState() => _HomeScreenDosenState();
}

class _HomeScreenDosenState extends State<HomeScreenDosen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'E LEARNING',
            style: GoogleFonts.ptSans(
                color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: mBackgroundColor,
        color: kColorTealSlow,
        items: [
        Icon(Icons.home),
        Icon(Icons.notifications),
        Icon(Icons.person),
      ]),
    );
  }
}
