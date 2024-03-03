// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicly/Pages/LoginPage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final _controller = PageController(
    initialPage: 0,
  );
  late PageController _WelcomePageController;
  @override
  void initState() {
    _WelcomePageController = PageController()
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement deactivate
    _WelcomePageController.dispose();
    super.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 250,
                ),
                Center(
                  child: Text(
                    'Welcome',
                    style: GoogleFonts.playfairDisplay(
                      textStyle: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Text(
                  'we are glad that you are here',
                  style: GoogleFonts.sourceSans3(
                      color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: Size(200, 35),
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(0),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        )),
                    onPressed: () {
                      loginpage();
                    },
                    child: Text(
                      'Login',
                      style: GoogleFonts.playfairDisplay(
                          textStyle:
                              TextStyle(color: Colors.black, fontSize: 30)),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  //controller for the texts

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

//login page, finally
}
