// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'widgets/bottombar.dart';

class Reels extends StatelessWidget {
  final List<String> images = [
    'assets/images/a.jpg',
    'assets/images/b.jpg',
    'assets/images/c.jpg',
    'assets/images/d.jpg',
    'assets/images/e.jpg',
    'assets/images/f.jpg',
    'assets/images/g.jpg',
    'assets/images/h.jpg',
    'assets/images/i.jpg',
    'assets/images/w1.jpg',
    'assets/images/w2.jpg',
    'assets/images/w3.jpg',
    'assets/images/w4.jpg',
    'assets/images/w5.jpg',
    'assets/images/w6.jpg',
    'assets/images/w7.jpg'
    // 'assets/images/image6.jpg',
  ];

  Reels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: const Bottombar(),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    "assets/images/metalogo.png",
                    width: 10,
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(29, 158, 158, 158),
                  hintText: "Ask meta Ai or Search",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(29, 158, 158,
                          158), // Border color when enabled but not focused
                      // width: 2.0, // Border width
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(29, 158, 158, 158),
                      // width: 2.0,
                    ),
                  ),
                )),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of items per row
                  crossAxisSpacing: 1.0,
                  mainAxisSpacing: 1.0,
                ),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(images[index], fit: BoxFit.cover);
                },
              ),
            ),
          ],
        ));
  }
}
