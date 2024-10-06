
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:elearning/screen/home/home_screen_mahasiswa.dart';
import 'package:elearning/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List screen =[
    BerandaMahasiswa(),
    notificationsMhs(),
    ChatingMhs(),
    ProfileMhs(),
  ];
  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
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
          index: selectedIndex,
          
          
          items: [
            Icon(
              Icons.home,
              color: mBackgroundColor,
              size: 35,
              
            ),
            Icon(
              Icons.notifications,
              color: mBackgroundColor,
              size: 35,
            ),
            Icon(
              Icons.chat,
              color: mBackgroundColor,
              size: 35,
            ),
            Icon(
              Icons.person,
              color: mBackgroundColor,
              size: 35,
            ),

          ],
          onTap: (index){
            setState(() {
              selectedIndex = index;
            });
          },
          ),
          body: screen[selectedIndex],
    );
  }
}
