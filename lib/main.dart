import 'package:flutter/material.dart';
import 'package:kogachiflutter/screens/dashboard.dart';
import 'package:kogachiflutter/screens/profile.dart';
import 'package:kogachiflutter/screens/setting.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Login(),
        "/second": (context) => Dashboard(),
        "/third": (context) => Setting(),
        "/fourth": (context) => Profile(),
      },
    ));

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("addu-ccfc.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        stops: [
                      0.1,
                      0.5,
                    ],
                        colors: [
                      Colors.blue,
                      Colors.purple
                    ])),
                width: 400,
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      "assets/addu.png",
                      height: 200,
                      width: 100,
                    ),
                    Text(
                      "ATENEO DE",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        color: Colors.black,
                        fontFamily: "IndieFlower",
                      ),
                    ),
                    Text(
                      "DAVAO",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        color: Colors.black,
                        fontFamily: "IndieFlower",
                      ),
                    ),
                    Text(
                      "UNIVERSITY",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        color: Colors.black,
                        fontFamily: "IndieFlower",
                      ),
                    ),
                    Text("Community Center"),
                    Text("Asset Management System"),
                    const SizedBox(height: 10),
                    SocialLoginButton(
                      height: 50,
                      width: 280,
                      buttonType: SocialLoginButtonType.google,
                      onPressed: () {
                        Navigator.pushNamed(context, "/second");
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SocialLoginButton(
                      height: 50,
                      width: 280,
                      buttonType: SocialLoginButtonType.github,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
