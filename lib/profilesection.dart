import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/bottombar.dart';

class Profilesection extends StatefulWidget {
  const Profilesection({super.key});

  @override
  State<Profilesection> createState() => _ProfilesectionState();
}

class _ProfilesectionState extends State<Profilesection> {
  final List<String> gridimages = [
    'assets/images/men1.jpg',
    'assets/images/men2.jpeg',
    'assets/images/men3.jpg',
    'assets/images/men1.jpg',
    'assets/images/men5.jpg',
    'assets/images/men6.jpg',
    'assets/images/men7.jpg',
    'assets/images/men8.jpg',
    'assets/images/men9.jpg',
    'assets/images/men10.jpg',
  ];

  var storydata = [
    {'name': 'Me', 'url': 'assets/images/men8.jpg'},
    {'name': 'Dubai', 'url': 'assets/images/dubai.jpeg'},
    {'name': 'Photographs', 'url': 'assets/images/men1.jpg'},
    {'name': 'Gym', 'url': 'assets/images/men2.jpeg'},
    {'name': 'Life', 'url': 'assets/images/men3.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Bottombar(),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("danisharshad"),
                SizedBox(width: 8),
                CircleAvatar(
                  minRadius: 10,
                  backgroundImage: AssetImage("assets/images/bluetick.jpg"),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(FontAwesomeIcons.ellipsis),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Profile Image
                      Stack(
                        alignment: Alignment.center,
                        children: [
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
                          Container(
                            width: 130,
                            height: 130,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/men8.jpg")),
                            ),
                          ),
                        ],
                      ),
                      // Stats
                      const Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "657",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text("posts", style: TextStyle(fontSize: 17)),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "294.5k",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text("followers",
                                    style: TextStyle(fontSize: 17)),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "9",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text("following",
                                    style: TextStyle(fontSize: 17)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 29),
                            child: Text(
                              "Justin Betman",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Text("Photographer And director"),
                          const Text("represented by andriojeckson hopkins"),
                          const Text("based In USA"),
                          const Text("#SetnithStreet",
                              style: TextStyle(color: Colors.blue)),
                          const Text(
                            "www.justinwakanda.com",
                            style: TextStyle(color: Colors.blue),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/men6.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/men7.jpg"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 8),
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Followed By",
                                        style: TextStyle(color: Colors.black)),
                                    TextSpan(text: " "),
                                    TextSpan(
                                        text: "millchennalexperience",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    TextSpan(text: " "),
                                    TextSpan(
                                        text: "and",
                                        style: TextStyle(color: Colors.black)),
                                    TextSpan(text: " "),
                                    TextSpan(
                                        text: "heatherday",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                // Buttons Row
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: const Text("Follow"),
                        ),
                      ),
                      const SizedBox(width: 10),
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
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Messages",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor:
                              const Color.fromARGB(190, 255, 255, 255),
                          foregroundColor: Colors.black,
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.person_add_rounded),
                        label: const SizedBox.shrink(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                // Story Section
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...storydata.map((url) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 99,
                                    height: 99,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          url['url'].toString(),
                                        ),
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
                        );
                      })
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.grid_on_rounded),
                    FaIcon(FontAwesomeIcons.instagram),
                    Icon(Icons.perm_contact_cal_rounded),
                  ],
                ),
              ],
            ),
          ),
          // Image Grid Section
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Image.asset(
                  gridimages[index],
                  fit: BoxFit.cover,
                );
              },
              childCount: gridimages.length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
            ),
          ),
        ],
      ),
    );
  }
}
