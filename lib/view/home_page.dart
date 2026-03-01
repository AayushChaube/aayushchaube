import 'package:aayushchaube/uikit/header.dart';
import 'package:aayushchaube/view/about_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<GlobalKey> navigatorKeys = [
    GlobalKey(), // About Me
    GlobalKey(), // Resume
    GlobalKey(), // Projects
    GlobalKey(), // Contact
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(
        navigatorKeys: navigatorKeys,
        selectedIndex: selectedIndex,
        onSelect: onHeaderSelect,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // About Section
            Container(key: navigatorKeys[0], child: const AboutSection()),

            // Resume Section
            Container(
              key: navigatorKeys[1],
              color: Colors.grey,
              height: 600,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Resume Section',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // Projects Section
            Container(
              key: navigatorKeys[2],
              color: Colors.blue,
              height: 600,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Projects Section',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // Contact Section
            Container(
              key: navigatorKeys[3],
              color: Colors.green,
              height: 600,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Contact Section',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onHeaderSelect(int index) {
    setState(() {
      selectedIndex = index;
    });
    final key = navigatorKeys[index];
    if (key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 600),
      );
    }
  }
}
