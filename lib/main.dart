import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instaclone/instahome.dart';
import 'package:instaclone/messages.dart';
import 'package:instaclone/reels.dart';
import 'package:instaclone/user_profile.dart';

import 'firebase_options.dart';
import 'login.dart';
import 'profilesection.dart';
import 'register.dart';
import 'splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splashscreen(),
      routes: {
        'instahome': (context) => const Insta_Home(),
        'search': (context) => Reels(),
        'listtile_profile': (context) => const Profilesection(),
        'messages': (context) => const Messages(),
        'login': (context) => const Login(),
        'Register': (context) => const Register(),
        'profile': (context) => const user_profile(),
      },
    );
  }
}
