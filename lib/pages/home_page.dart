import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_page_hw/pages/register_page.dart';

import '../model/user.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        minimumSize: const Size(157, 80),
        primary: Colors.grey,
        textStyle: const TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400));
    return Scaffold(
      body: Center(
        child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/background.jpeg'),
              fit: BoxFit.cover,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: style,
                    onPressed: () async {
                      await context.setLocale(Locale('ru'));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Русский",
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'Montserrat'),
                    )),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: style,
                    onPressed: () async {
                      await context.setLocale(Locale('kk'));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                        ),
                      );
                    },
                    child: Text(
                      "казахский",
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'Montserrat'),
                    )),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: style,
                    onPressed: () async {
                      await context.setLocale(Locale('en'));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Англиский",
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'Montserrat'),
                    )),
              ],
            )),
      ),
    );
  }
}
