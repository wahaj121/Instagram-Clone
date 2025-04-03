import 'dart:async';

import 'package:flutter/material.dart';

import 'register.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Register()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(8, 214, 36, 158), // Light Purple/Pink
              Color.fromARGB(25, 40, 89, 235), // Light Blue
              Color.fromARGB(25, 40, 89, 235), // Light Blue
              Color.fromARGB(25, 40, 89, 235), // Light Blue
              Color.fromARGB(62, 225, 227, 231), // Light Blue
              // Color(0xFFfdf497), // Light Yellow
              // Color(0xFFfd5949), // Light Red/Pink
            ],
            stops: [0.1, 0.4, 0.6, 0.8, 1],
          ),
        ),
      ),
      const Center(
        child: Image(
            width: 100,
            height: 100,
            image: AssetImage("assets/images/logoinsta.png")),
      ),
      const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 500,
            ),
            Text("from"),
            Image(
                width: 80,
                height: 80,
                image: AssetImage("assets/images/metaai.png"))
          ],
        ),
      ),
    ]));
  }
}
