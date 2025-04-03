import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'firebase_functions.dart';
import 'user_profile.dart';
import 'widgets/bottombar.dart';
import 'widgets/profilestory.dart';

// ignore: must_be_immutable
class Insta_Home extends StatefulWidget {
  const Insta_Home({super.key});

  @override
  State<Insta_Home> createState() => _Insta_HomeState();
}

class _Insta_HomeState extends State<Insta_Home> {
  var arrdata = [
    {'name': 'usama', 'url': 'assets/images/men5.jpg'},
    {'name': 'kamran', 'url': 'assets/images/men1.jpg'},
    {'name': 'Usman', 'url': 'assets/images/men2.jpeg'},
    {'name': 'ali', 'url': 'assets/images/men3.jpg'},
    {'name': 'shameer', 'url': 'assets/images/men4.jpeg'},
  ];

  User? user;

  @override
  void initState() {
    super.initState();
    // Get the current user
    user = FirebaseAuth.instance.currentUser;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Bottombar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false, // Hides the back arrow

            title: Image.asset(
              "assets/images/logo.png",
              height: 50,
            ),
            backgroundColor: Colors.white,
            expandedHeight: 50.0,
            floating: false,
            pinned: false,
            // flexibleSpace: FlexibleSpaceBar(
            //   title: Image.asset(
            //     "assets/images/logo.png",
            //     height: 50,
            //   ),
            // ),
            actions: [
              IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {
                  signOut(context);
                },
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 8, left: 3),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'messages');
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.facebookMessenger,
                      size: 22,
                    ),
                  ))
              // Icon(Icons.mobile_screen_share_rounded)
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(9),
                        child: Profile_Story(),
                      ),
                      ...arrdata.map((url) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      // Outer Container with gradient border
                                      Container(
                                        width: 107,
                                        height: 107,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "assets/images/stack.jpeg")),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      // Inner Container with image
                                      Container(
                                        width: 100,
                                        height: 100,
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
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 700,
              child: Column(
                children: [
                  ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const user_profile()));
                      },
                      title: user != null
                          ? Text('${user!.email}')
                          : const Text('No user logged in'),
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/men8.jpg"),
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                                backgroundColor: Colors.white,
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(25.0),
                                  ),
                                ),
                                context: context,
                                builder: (BuildContext context) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                        height: 397,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0,
                                                  right: 8.0,
                                                  top: 20),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                                border: Border
                                                                    .all(),
                                                                shape: BoxShape
                                                                    .circle),
                                                        child: const Icon(
                                                          size: 30,
                                                          Icons
                                                              .bookmark_border_outlined,
                                                        ),
                                                      ),
                                                      const Text("Save")
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(),
                                                          shape:
                                                              BoxShape.circle,
                                                          // image: const DecorationImage(

                                                          //     image: AssetImage(
                                                          //         "assets/images/remix.png"),
                                                          //     fit: BoxFit.fill),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(6.0),
                                                          child: Image.asset(
                                                              width: 30,
                                                              height: 30,
                                                              "assets/images/remix.png"),
                                                        ),
                                                      ),
                                                      const Text("Remix")
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                                border: Border
                                                                    .all(),
                                                                shape: BoxShape
                                                                    .circle),
                                                        child: const Icon(
                                                          size: 30,
                                                          Icons.qr_code_scanner,
                                                        ),
                                                      ),
                                                      const Text("QR code ")
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Divider(
                                              thickness: 1,
                                              color: Color.fromARGB(
                                                  164, 158, 158, 158),
                                            ),
                                            const Column(
                                              children: [
                                                ListTile(
                                                  title: Text(
                                                      "Why you're seeing this post"),
                                                  leading: Icon(Icons
                                                      .error_outline_outlined),
                                                ),
                                                ListTile(
                                                  title: Text("Not intrested"),
                                                  leading: Icon(
                                                      size: 20,
                                                      FontAwesomeIcons
                                                          .eyeSlash),
                                                ),
                                                ListTile(
                                                  title: Text(
                                                      "About this account"),
                                                  leading: Icon(Icons.person),
                                                ),
                                                ListTile(
                                                  title: Text(
                                                    "Report",
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  ),
                                                  leading: Icon(
                                                    Icons
                                                        .report_problem_outlined,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                                Divider(
                                                  color: Color.fromARGB(
                                                      151, 158, 158, 158),
                                                  thickness: 1,
                                                ),
                                                ListTile(
                                                    title: Text(
                                                        "Manage content preferences"),
                                                    leading: Image(
                                                      width: 20,
                                                      height: 20,
                                                      image: AssetImage(
                                                          "assets/images/equalizer.png"),
                                                    )),
                                                SizedBox(
                                                  height: 35,
                                                )
                                              ],
                                            ),
                                          ],
                                        )),
                                  );
                                });
                          },
                          icon: const Icon(FontAwesomeIcons.ellipsisVertical))),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      height: 500,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/men10.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(6.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: Row(
                                        children: [
                                          Icon(FontAwesomeIcons.heart),
                                          SizedBox(width: 3),
                                          Text("20")
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: Row(
                                        children: [
                                          Icon(FontAwesomeIcons.comment),
                                          SizedBox(width: 3),
                                          Text("6")
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: Icon(Icons.share),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(FontAwesomeIcons.bookmark),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "danisharshad",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(text: " "),
                                      TextSpan(
                                        text:
                                            "don't race, I don't chase thats why I can't be replaced",
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "View all comments",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "20 june",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
