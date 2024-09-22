import 'package:app_videojuego/pages/mainscreens/home.dart';
import 'package:app_videojuego/pages/mainscreens/user_config.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  static const String routeName = 'menu';
  const Menu({super.key});

  @override
  MenuState createState() => MenuState();
}

class MenuState extends State<Menu> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Home(),
    const UserConfig(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Center(
          child: Row(
            mainAxisSize: MainAxisSize
                .min, // Asegúrate de que el Row no ocupe todo el ancho
            children: [
              Text(
                'Mi mundo ',
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('matemático', style: TextStyle(color: Colors.blue)),
            ],
          ),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 30),
            label: 'User Config',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
