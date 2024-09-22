import 'package:flutter/material.dart';

class BottomNavigationBarComponent extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabSelected;

  const BottomNavigationBarComponent({
    super.key,
    required this.currentIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTabSelected,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.face_outlined),
          label: 'Cadastro',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'About')
      ],
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
    );
  }
}
