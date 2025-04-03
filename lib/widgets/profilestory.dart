// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Profile_Story extends StatelessWidget {
  const Profile_Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  border: Border.all(width: 4, color: Colors.white),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 3,
                      color: Colors.black,
                    )
                  ],
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/men6.jpg'),
                  )),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      // border: Border.all(width: 4),
                      color: Colors.blue),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("your story",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
        ),
      ],
    );
  }
}
