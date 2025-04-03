import 'package:flutter/material.dart';

class Followed_Profiles extends StatefulWidget {
  const Followed_Profiles({super.key});

  @override
  State<Followed_Profiles> createState() => _Followed_ProfilesState();
}

class _Followed_ProfilesState extends State<Followed_Profiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 30,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/men6.jpg"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              width: 30,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/men7.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
        ],
      ),
    );
  }
}
