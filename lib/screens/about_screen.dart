import 'package:flutter/material.dart';

import '../components/custom_drawer.dart';

class AboutScreen extends StatelessWidget {
  // Este é o construtor da sua classe
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Sobre nós",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Center(
        child: Text(
          'Lorem ipsum arcu quam, molestie justo.',
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.black45,
              fontStyle: FontStyle.italic),
        ),
      ),
      drawer: const CustomDrawer(currentPage: 'Login'),
    );
  }
}
