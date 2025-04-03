// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/bottombar.dart';

class user_profile extends StatefulWidget {
  const user_profile({super.key});

  @override
  State<user_profile> createState() => _user_profileState();
}

class _user_profileState extends State<user_profile> {
  final List<String> gridimages = [
    'assets/images/men10.jpg',
    'assets/images/men9.jpg',
    'assets/images/men8.jpg',
    'assets/images/men7.jpg',
    'assets/images/men6.jpg',
    'assets/images/men5.jpg',
    'assets/images/men1.jpg',
    'assets/images/men3.jpg',
    'assets/images/men2.jpeg',
    'assets/images/men1.jpg',
  ];
  var storydata = [
    {'name': 'Me', 'url': 'assets/images/men18.jpg'},
    {'name': 'Canada', 'url': 'assets/images/dubai.jpeg'},
    {'name': 'Photographs', 'url': 'assets/images/men1.jpg'},
    {'name': 'Life', 'url': 'assets/images/men3.jpg'},
    {'name': 'Gym', 'url': 'assets/images/men2.jpeg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Bottombar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: false,
            pinned: false,
            title: const Row(
              children: [
                Text("codiram"),
                SizedBox(width: 8), // For some spacing between text and icon
                CircleAvatar(
                  minRadius: 10,
                  backgroundImage: AssetImage("assets/images/bluetick.jpg"),
                  // backgroundImage: AssetImage("assets/images/bluetick.png"),
                ) // Replace with your desired icon
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(FontAwesomeIcons.threads)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add_box_outlined)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                  ],
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            // Outer Container with gradient border
                            Container(
                              width: 135,
                              height: 135,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/images/stack.jpeg")),
                              ),
                            ),
                            // Inner Container with image
                            Container(
                              width: 130,
                              height: 130,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/men6.jpg"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "297",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text("posts", style: TextStyle(fontSize: 17))
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "23.5M",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text("followers",
                                      style: TextStyle(fontSize: 17))
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "30",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text("following",
                                      style: TextStyle(fontSize: 17))
                                ],
                              ),
                            ],
                          ))
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 29),
                              child: Text(
                                "Justin Betman",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "Founder of HSDFC Foundation USA",
                            ),
                            Text(
                              "represented by andriojeckson hopkins",
                            ),
                            Text(
                              "based In USA",
                            ),
                            Text(
                              "#SetnithStreet",
                              style: TextStyle(color: Colors.blue),
                            ),
                            Text(
                              "www.justinwakanda.com",
                              style: TextStyle(color: Colors.blue),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(190, 255, 255, 255),

                              foregroundColor: Colors.black,
                              // minimumSize:
                              //     const Size(0, 40), // minimum width set to 0
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Edit profile",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        // Messages Button with 40% width
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(190, 255, 255, 255),
                              foregroundColor: Colors.black,
                              // minimumSize:
                              //     const Size(0, 40), // minimum width set to 0
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Share profile ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        // Icon Button with 20% width
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(9),
                        ),
                        ...storydata.map((url) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        // Outer Container with gradient border
                                        Container(
                                          width: 99,
                                          height: 99,
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        // Inner Container with image
                                        Container(
                                          width: 90,
                                          height: 90,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  url['url'].toString()),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(url['name'].toString()),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.black))),
                          child: const Icon(Icons.grid_on_rounded),
                        ),
                      ),
                      const Expanded(
                          flex: 1,
                          child: FaIcon(FontAwesomeIcons.clapperboard)),
                      const Expanded(
                          flex: 1,
                          child: Icon(Icons.perm_contact_cal_outlined)),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                ],
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 1.0,
              mainAxisSpacing: 1.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Image.asset(
                  gridimages[index],
                  fit: BoxFit.cover,
                );
              },
              childCount: gridimages.length,
            ),
          ),
        ],
      ),
    );
  }
}
