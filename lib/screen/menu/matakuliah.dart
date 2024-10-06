import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../util/constants.dart';

class matakuliah extends StatefulWidget {
  const matakuliah({super.key});

  @override
  State<matakuliah> createState() => _matakuliahState();
}

class _matakuliahState extends State<matakuliah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.black,
          ),
        ),
        body: MenuMatakuliah());
  }
}

class MenuMatakuliah extends StatelessWidget {
  const MenuMatakuliah({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white,
        child: SizedBox(
          width: 500,
          height: 1000,
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              Center(
                child: CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: Colors.green,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                color: Colors.blue[200],
                child: const SizedBox(
                  width: 400,
                  height: 300,
                  child: Column(
                    children: [
                      Center(
                        child: Text('Pertemuan 1',
                            style: TextStyle(
                                color: mBackgroundColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 30)),
                      ),
                      Card(
                        child: SizedBox(
                          width: 300,
                          height: 60,
                          child: Row(
                            children: [
                              Icon(Icons.people_outline),
                              Spacer(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class Checkboxx extends StatefulWidget {
  const Checkboxx({super.key, required onChanged, required bool value});

  @override
  State<Checkboxx> createState() => _CheckboxxState();
}

class _CheckboxxState extends State<Checkboxx> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.focused,
        MaterialState.hovered,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.green;
      }
      return Colors.red;
    }

    return Checkbox(
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        });
  }
}
