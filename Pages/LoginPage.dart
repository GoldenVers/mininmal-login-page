// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicly/Pages/RegisterPage.dart';
import 'package:musicly/components/Mytextfields.dart';
import 'package:musicly/components/buttons.dart';
import 'package:musicly/components/square_tile.dart';

class loginpage extends StatefulWidget {
  loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  late PageController _loginpagecontroller;

  @override
  void initState() {
    // TODO: implement initState
    _loginpagecontroller = PageController()
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _loginpagecontroller.dispose();
    super.dispose();
  }

  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(_loginpagecontroller.page);
    return SizedBox(
      height: 550,
      child: PageView(
        controller: _loginpagecontroller,
        children: [
          SignIn(
              usernameController: usernameController,
              passwordController: passwordController),
          SignUp(),
        ],
      ),
    );
  }
}
//sign up
class SignUp extends StatelessWidget {
  const SignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('not a member?'),
        SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            RegisterPage();
          },
          child: Text(
            'sign up now',
            style: TextStyle(color: Colors.blue.shade700),
          ),
        )
      ],
    );
  }
}

class SignIn extends StatefulWidget {
  const SignIn({
    super.key,
    required this.usernameController,
    required this.passwordController,
  });

  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //text login
          Container(
            alignment: Alignment.topCenter, // Align "Login" to the top center
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Login',
              style: GoogleFonts.playfairDisplay(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 45,
                      fontStyle: FontStyle.normal)),
            ),
          ),
          //email field
          MyTextField(
            controller: widget.usernameController,
            hintText: 'Email',
            obscureText: false,
          ),

          //password field
          MyTextField(
            controller: widget.passwordController,
            hintText: 'Password',
            obscureText: true,
          ),
          SizedBox(
            height: 20,
          ),

          // Your content for the bottom sheet

          //login button
          Mybutton(),

          SizedBox(
            height: 20,
          ),
          //or continue with
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                )),
                Text(
                  'Or continue with',
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 15),
                ),
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ))
              ],
            ),
          ),

          SizedBox(
            height: 25,
          ),
          //sign in with google and apple
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //google button
              SquareTile(imagepath: 'images/google.png'),
              SizedBox(
                width: 5,
              ),
              //apple button
              SquareTile(imagepath: 'images/apple.png')
            ],
          ),
          SizedBox(
            height: 25,
          ),
          //not a member? sign up now
        ],
      ),
    );
  }
}
