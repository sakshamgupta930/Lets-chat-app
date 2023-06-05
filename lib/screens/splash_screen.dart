import 'package:flutter/material.dart';
import 'package:lets_chat/main.dart';
import 'package:lets_chat/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    nq = MediaQuery.of(context).size;
    // AppBar
    return Scaffold(
      // body
      body: Stack(
        children: [
          // app logo
          Positioned(
            top: nq.height * .20,
            right: nq.width * .25,
            width: nq.width * .5,
            child: Image.asset('images/icon.png'),
          ),
          Positioned(
            bottom: nq.height * .15,
            left: nq.width * .05,
            width: nq.width * .9,
            height: nq.height * .06,
            child: const Text(
              "MADE BY SAKSHAM ❣️",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
