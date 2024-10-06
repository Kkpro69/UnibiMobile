import 'package:elearning/size_config.dart';
import 'package:flutter/material.dart';

import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: LoginComponents(),
    );
  }
}

class LoginComponents extends StatefulWidget {
  const LoginComponents({super.key});

  @override
  State<LoginComponents> createState() => _LoginComponentsState();
}

class _LoginComponentsState extends State<LoginComponents> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenHeight(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/images/download.png',
                  width: 250,
                  height: 240,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SigInform(),
            ],
          ),
        ),
      ),
    ));
  }
}
