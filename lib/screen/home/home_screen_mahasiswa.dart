import 'package:elearning/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../menu/matakuliah.dart';

class BerandaMahasiswa extends StatelessWidget {
  const BerandaMahasiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
      color: Colors.white,
      child: SizedBox(
        width: 500,
        height: 1000,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                // card ke satu 
                Padding(padding: EdgeInsets.only(top: 10)),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  color: kColorTealSlow,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>matakuliah()));
                    },
                    child: SizedBox(
                      width: 400,
                      height: 120,
                      child: Column(
                        children: [
                           Padding(padding: EdgeInsets.only(top: 10)),
                          Center(
                            child: Text(
                              'Rekayasa Perangkat Lunak',
                              style: TextStyle(
                                  color: mBackgroundColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 35)),
                          Center(
                            child: LinearPercentIndicator(
                              barRadius: Radius.circular(16),
                              alignment: MainAxisAlignment.center,
                              width: 300,
                              percent: 0.75,
                              lineHeight: 25,
                              progressColor: mTitleColor,
                              center: Text(
                                '75%',
                                style: TextStyle(color: mBackgroundColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Card ke dua
                Padding(padding: EdgeInsets.only(top: 20)),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  color: kColorTealSlow,
                  child: InkWell(
                    onTap: () {
                      debugPrint('Card dua di klik');
                    },
                    child: SizedBox(
                      width: 400,
                      height: 120,
                      child: Column(
                        children: [
                           Padding(padding: EdgeInsets.only(top: 10)),
                          Center(
                            child: Text(
                              'Basis Data',
                              style: TextStyle(
                                  color: mBackgroundColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 35)),
                          Center(
                            child: LinearPercentIndicator(
                              barRadius: Radius.circular(16),
                              alignment: MainAxisAlignment.center,
                              width: 300,
                              percent: 0.30,
                              lineHeight: 25,
                              progressColor: mTitleColor,
                              center: Text(
                                '30%',
                                style: TextStyle(color: mBackgroundColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Card Ke tiga
                Padding(padding: EdgeInsets.only(top: 20)),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  color: kColorTealSlow,
                  child: InkWell(
                    onTap: () {
                      debugPrint('Card dua di klik');
                    },
                    child: SizedBox(
                      width: 400,
                      height: 120,
                      child: Column(
                        children: [
                           Padding(padding: EdgeInsets.only(top: 10)),
                          Center(
                            child: Text(
                              'Pemrograman Berorientasi Object',
                              style: TextStyle(
                                  color: mBackgroundColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 35)),
                          Center(
                            child: LinearPercentIndicator(
                              barRadius: Radius.circular(16),
                              alignment: MainAxisAlignment.center,
                              width: 300,
                              percent: 0.30,
                              lineHeight: 25,
                              progressColor: mTitleColor,
                              center: Text(
                                '30%',
                                style: TextStyle(color: mBackgroundColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Card Ke 4
                Padding(padding: EdgeInsets.only(top: 20)),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  color: kColorTealSlow,
                  child: InkWell(
                    onTap: () {
                      debugPrint('Card dua di klik');
                    },
                    child: SizedBox(
                      width: 400,
                      height: 120,
                      child: Column(
                        children: [
                           Padding(padding: EdgeInsets.only(top: 10)),
                          Center(
                            child: Text(
                              'Matrik Dan Ruang Vektor',
                              style: TextStyle(
                                  color: mBackgroundColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 35)),
                          Center(
                            child: LinearPercentIndicator(
                              barRadius: Radius.circular(16),
                              alignment: MainAxisAlignment.center,
                              width: 300,
                              percent: 0.30,
                              lineHeight: 25,
                              progressColor: mTitleColor,
                              center: Text(
                                '30%',
                                style: TextStyle(color: mBackgroundColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Card Ke 5
                Padding(padding: EdgeInsets.only(top: 20)),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  color: kColorTealSlow,
                  child: InkWell(
                    onTap: () {
                      debugPrint('Card dua di klik');
                    },
                    child: SizedBox(
                      width: 400,
                      height: 120,
                      child: Column(
                        children: [
                           Padding(padding: EdgeInsets.only(top: 10)),
                          Center(
                            child: Text(
                              'Sistem Operasi',
                              style: TextStyle(
                                  color: mBackgroundColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 35)),
                          Center(
                            child: LinearPercentIndicator(
                              barRadius: Radius.circular(16),
                              alignment: MainAxisAlignment.center,
                              width: 300,
                              percent: 0.30,
                              lineHeight: 25,
                              progressColor: mTitleColor,
                              center: Text(
                                '30%',
                                style: TextStyle(color: mBackgroundColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // card 6
                Padding(padding: EdgeInsets.only(top: 20)),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  color: kColorTealSlow,
                  child: InkWell(
                    onTap: () {
                      debugPrint('Card dua di klik');
                    },
                    child: SizedBox(
                      width: 400,
                      height: 120,
                      child: Column(
                        children: [
                           Padding(padding: EdgeInsets.only(top: 10)),
                          Center(
                            child: Text(
                              'Sistem Operasi',
                              style: TextStyle(
                                  color: mBackgroundColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 35)),
                          Center(
                            child: LinearPercentIndicator(
                              barRadius: Radius.circular(16),
                              alignment: MainAxisAlignment.center,
                              width: 300,
                              percent: 0.30,
                              lineHeight: 25,
                              progressColor: mTitleColor,
                              center: Text(
                                '30%',
                                style: TextStyle(color: mBackgroundColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class notificationsMhs extends StatelessWidget {
  const notificationsMhs({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: SizedBox(
          child: Text('Pengumuman'),
        ),
      ),
    );
  }
}

class ChatingMhs extends StatelessWidget {
  const ChatingMhs({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: SizedBox(
          child: Text('chat'),
        ),
      ),
    );
  }
}

class ProfileMhs extends StatelessWidget {
  const ProfileMhs({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: SizedBox(
          child: Text('profile'),
        ),
      ),
    );
  }
}
