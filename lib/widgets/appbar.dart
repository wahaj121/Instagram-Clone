import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Instabar extends StatelessWidget implements PreferredSizeWidget {
  const Instabar({super.key});

  @override
  Size get preferredSize =>
      const Size.fromHeight(50.0); // Define the preferred height for the AppBar

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false, // Removes the back arrow

      backgroundColor: Colors.white,
      title: Image.asset(
        "assets/images/logo.png",
        height: 50,
      ),
      actions: const [
        Icon(Icons.favorite_border),
        Padding(
          padding: EdgeInsets.only(right: 8, left: 3),
          child: FaIcon(
            FontAwesomeIcons.facebookMessenger,
            size: 22,
          ),
        )
        // Icon(Icons.mobile_screen_share_rounded)
      ],
    );
  }
}
