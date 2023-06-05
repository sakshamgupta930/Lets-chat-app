import 'package:flutter/material.dart';
import 'package:lets_chat/main.dart';
import 'package:lets_chat/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isAnimate = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1), () {
      setState(() {
        _isAnimate = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    nq = MediaQuery.of(context).size;
    // AppBar
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Welcome to Lets Chat"),
      ),
      // body
      body: Stack(
        children: [
          // app logo
          AnimatedPositioned(
            // right: _isAnimate ? nq.width * .25 : nq.width * 5,
            // width: nq.width * .5,
            width: _isAnimate ? nq.width * .5 : nq.width % .25,
            top: nq.height * .14,
            left: _isAnimate ? nq.width * .25 : nq.width * .5,
            curve: Curves.fastOutSlowIn,
            duration: const Duration(seconds: 2),
            child: Image.asset('images/icon.png'),
          ),
          Positioned(
            bottom: nq.height * .15,
            left: nq.width * .05,
            width: nq.width * .9,
            height: nq.height * .06,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 223, 255, 187),
                shape: StadiumBorder(),
                elevation: 1,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              icon: Image.asset(
                'images/google.png',
                height: nq.height * .04,
              ),
              label: RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: [
                    TextSpan(text: 'Log In with '),
                    TextSpan(
                      text: 'Google',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
