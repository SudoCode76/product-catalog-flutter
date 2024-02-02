import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sudo_keys/botonNavegacion/activaciones.dart';
import 'package:sudo_keys/botonNavegacion/inicio.dart';
import 'package:sudo_keys/botonNavegacion/productos.dart';
import 'package:sudo_keys/botonNavegacion/acerca.dart';

class botonNavegacion extends StatefulWidget {
  const botonNavegacion({super.key});

  @override
  State<botonNavegacion> createState() => _botonNavegacionState();
}

class _botonNavegacionState extends State<botonNavegacion> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [inicio(), productos(), activaciones(), acerca()],
      ),
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 53, 33, 45),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
              backgroundColor: const Color.fromARGB(255, 53, 33, 45),
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Color.fromARGB(255, 93, 96, 118),
              gap: 8,
              onTabChange: (index) {
                setState(() {
                  _currentIndex = index;
                  _pageController.animateToPage(index,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease);
                });
              },
              padding: EdgeInsets.all(16),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'inicio',
                ),
                GButton(
                  icon: Icons.inventory,
                  text: 'Keys',
                ),
                GButton(
                  icon: Icons.key,
                  text: 'Activaciones',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Acerca de',
                ),
              ]),
        ),
      ),
    );
  }
}
