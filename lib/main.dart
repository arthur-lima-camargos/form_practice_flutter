import 'package:flutter/material.dart';
import 'package:form_using_flutter/screens/about_screen.dart';
import 'screens/list_screen.dart';
import 'screens/login_screen.dart';
import 'screens/cadastro_screen.dart';
import 'components/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App Flutter com Navegação',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: IndexedStack(
            index: _currentIndex,
            children: const [LoginScreen(), CadastroScreen(), AboutScreen()],
          ),
          bottomNavigationBar: BottomNavigationBarComponent(
            currentIndex: _currentIndex,
            onTabSelected: _onTabSelected,
          ),
        ),
        routes: {
          '/list_screen': (context) => const ListScreen(),
        });
  }
}
