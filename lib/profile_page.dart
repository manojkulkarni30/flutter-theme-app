import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.themeMode,
    required this.toggleTheme,
  });

  final void Function() toggleTheme;
  final ThemeMode themeMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Manoj Kulkarni',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: toggleTheme,
            icon: Icon(
              themeMode == ThemeMode.light ? Icons.dark_mode : Icons.light_mode,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          spacing: 10,
          children: [
            // Profile Picture
            Image.asset("assets/images/profile.png", width: 200, height: 200),
            FilledButton(
              onPressed: () {},
              child: const Text(
                "Follow",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            // Name
            const Text(
              "Manoj Kulkarni",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            // Subtitle
            const Text("Flutter Developer", style: TextStyle(fontSize: 20)),
            // Social Icons
            const Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.github, size: 50),
                FaIcon(FontAwesomeIcons.linkedin, size: 50),
                FaIcon(FontAwesomeIcons.xTwitter, size: 50),
                FaIcon(FontAwesomeIcons.youtube, size: 50),
              ],
            ),
            // Seperator
            const Divider(),
            const SizedBox(height: 10),
            // About Me Text
            const Text(
              "About Me",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            // Description
            const Text(
              "Cross platform mobile application developer. I love to work on Flutter and Dart. I am a quick learner and love to learn new technologies.",
            ),
          ],
        ),
      ),
    );
  }
}
