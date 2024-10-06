import 'package:elearning/screen/homeScreen.dart';
import 'package:elearning/screen/home/homeScreenDosen.dart';
import 'package:elearning/size_config.dart';
import 'package:elearning/util/constants.dart';
import 'package:flutter/material.dart';


class SigInform extends StatefulWidget {
  const SigInform({super.key});

  @override
  State<SigInform> createState() => _SigInformState();
}

class _SigInformState extends State<SigInform> {
  final _formKey = GlobalKey<FormState>();
  // String? Username;
  // String? Password;

  TextEditingController Username = TextEditingController(),
      Password = TextEditingController();

  FocusNode focusNode = new FocusNode();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildUser(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildPassword(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            SizedBox(
              width: double.infinity,
              height: getProportionateScreenHeight(56),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (Username.text == 'mahasiswa' &&
                        Password.text == '123456') {
                      // ke halaman baru
                      // menimpah hal lama
                      // Navigator.push(context, route);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                          (route) => false);
                    } else if (Username.text == 'dosen' &&
                        Password.text == 'dosen123') {
                          Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreenDosen(),
                          ),
                          (route) => false);
                    }else if(Username.text == 'admin'&& Password.text == 'admin123'){


                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Konfirmasi Login'),
                              content: Text('User atau Password salah'),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      Username.text = '';
                                      Password.text = '';
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Ok'))
                              ],
                            );
                          });
                    }
                  }
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return HomeScreen();
                  // }));
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: Colors.white,
                  backgroundColor: kColorTeal,
                ),
                child: Text(
                  'Masuk',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ));
  }

  TextFormField buildUser() {
    return TextFormField(
      controller: Username,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: "Username",
        hintText: "Masukan Username",
        labelStyle: TextStyle(
          color: kColorTealSlow,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Username Masih Kosong';
        }
        return null;
      },
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: Password,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Masukan Password anda",
        labelStyle: TextStyle(
          color: kColorTealSlow,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Passowrd Masih Kosong';
        }
        return null;
      },
    );
  }
}

// proseslogin(Username,password)async{
//   if(Username = 'mahasiswa' && password = 'mahasiswa'){}
// }