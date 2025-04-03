import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<Map<String, dynamic>> user = [
    {
      'id': 1,
      'user': 'ali Khan',
      'subtitle': 'Active yesterday',
      'images': 'assets/images/men1.jpg'
    },
    {
      'id': 2,
      'user': 'usman Ali Abbasi',
      'subtitle': 'Sent',
      'images': 'assets/images/men5.jpg'
    },
    {
      'id': 3,
      'user': 'huzair Rajput',
      'subtitle': 'Active 4h ago',
      'images': 'assets/images/men2.jpeg'
    },
    {
      'id': 4,
      'user': 'fahad Shaikh',
      'subtitle': 'Seen',
      'images': 'assets/images/men11.jpg'
    },
    {
      'id': 5,
      'user': 'sara',
      'email': 'sara@email.com',
      'subtitle': 'Active 8h ago',
      'images': 'assets/images/men8.jpg'
    },
    {
      'id': 6,
      'user': 'ahmed',
      'email': 'ahmed@email.com',
      'subtitle': 'Seen',
      'images': 'assets/images/men7.jpg'
    },
    {
      'id': 7,
      'user': 'fatima',
      'email': 'fatima@email.com',
      'subtitle': 'Active 4d ago',
      'images': 'assets/images/men6.jpg'
    },
    {
      'id': 8,
      'user': 'zain',
      'email': 'zain@email.com',
      'subtitle': 'Active 4w ago',
      'images': 'assets/images/men3.jpg'
    },
    {
      'id': 9,
      'user': 'hassan',
      'email': 'hassan@email.com',
      'subtitle': 'Active 1h ago',
      'images': 'assets/images/men12.jpg'
    },
    {
      'id': 10,
      'user': 'ayesha',
      'email': 'ayesha@email.com',
      'subtitle': 'Active 6d ago',
      'images': 'assets/images/men13.jpg'
    },
    {
      'id': 11,
      'user': 'bilal',
      'email': 'bilal@email.com',
      'subtitle': 'Active 2d ago',
      'images': 'assets/images/men14.jpg'
    },
    {
      'id': 12,
      'user': 'mariam',
      'email': 'mariam@email.com',
      'subtitle': 'Active 4d ago',
      'images': 'assets/images/men15.jpg'
    },
    {
      'id': 13,
      'user': 'imran',
      'email': 'imran@email.com',
      'subtitle': 'Active 5d ago',
      'images': 'assets/images/men16.jpg'
    },
    {
      'id': 14,
      'user': 'rabia',
      'email': 'rabia@email.com',
      'subtitle': 'Active 2w ago',
      'images': 'assets/images/men17.jpg'
    },
    {
      'id': 15,
      'user': 'omer',
      'email': 'omer@email.com',
      'subtitle': 'Active 3h ago',
      'images': 'assets/images/men18.jpg'
    },
    {
      'id': 16,
      'user': 'nida',
      'email': 'nida@email.com',
      'subtitle': 'Active 4w ago',
      'images': 'assets/images/men19.jpg'
    },
    {
      'id': 17,
      'user': 'asad',
      'email': 'asad@email.com',
      'subtitle': 'Active 8d ago',
      'images': 'assets/images/men20.jpg'
    },
    {
      'id': 18,
      'user': 'hiba',
      'email': 'hiba@email.com',
      'subtitle': 'Active 1w ago',
      'images': 'assets/images/men12.jpg'
    },
    {
      'id': 19,
      'user': 'kamran',
      'email': 'kamran@email.com',
      'subtitle': 'Active 3h ago',
      'images': 'assets/images/men15.jpg'
    },
    {
      'id': 20,
      'user': 'kiran',
      'email': 'kiran@email.com',
      'subtitle': 'Active 2h ago',
      'images': 'assets/images/men8.jpg'
    },
  ];
  List<Map<String, dynamic>> foundusers = [];
  @override
  initState() {
    foundusers = user;
    super.initState();
  }

  _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = user;
    } else {
      results = user
          .where((usereds) => usereds["user"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      foundusers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: const Bottombar(),
      body: Container(
        color: Colors.white,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: false,
              pinned: true,
              snap: false,
              elevation: 0,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    Container(
                      color: Colors.white, // AppBar background color
                    ),
                    Positioned(
                      bottom: 0, // Position the border at the bottom
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 0.5, // Border thickness
                        color:
                            const Color.fromARGB(71, 0, 0, 0), // Border color
                      ),
                    ),
                  ],
                ),
              ),
              backgroundColor:
                  Colors.white.withOpacity(1.0), // Ensure no transparency
              title: const Text(
                "john_decent91",
                style: TextStyle(
                    color: Colors.black), // Explicitly set the text color
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(Icons.note_alt_outlined),
                )
              ],
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        onChanged: (value) => _runFilter(value),
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
                              color: Color.fromARGB(29, 158, 158, 158),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(29, 158, 158, 158),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 130,
                          height: 125,
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
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 100,
                        right: 80,
                        child: Container(
                          height: 40,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                            color: Colors.white,
                          ),
                          child: const Center(child: Text("Note...")),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: Text(
                      "your note",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 168, 168, 168),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Messages",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Requests",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        key: ValueKey(foundusers[index]["user"]),
                        decoration: const BoxDecoration(),
                        child: ListTile(
                          onTap: () {},
                          tileColor: Colors.white,
                          title: Text(foundusers[index]["user"]),
                          subtitle: Text(foundusers[index]["subtitle"]),
                          trailing: const Icon(Icons.camera_alt_outlined),
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage(foundusers[index]["images"]),
                          ),
                        ),
                      ));
                },
                childCount: foundusers.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
