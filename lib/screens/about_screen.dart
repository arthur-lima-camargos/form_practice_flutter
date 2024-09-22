import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  // Este é o construtor da sua classe
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre nós'),
      ),
      body: const Center(
        child: Text('Lorem ipsum arcu quam, molestie justo.'),
      ),
    );
  }
}
