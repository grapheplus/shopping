import 'package:flutter/material.dart';
import 'package:shopping_online/pages/produit%20pages.dart';
import 'package:shopping_online/pages/favorite_page.dart';
import 'package:shopping_online/pages/detail_pages.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  // inst currentIndex permet de selectionner l'index du bottom navigation
  int currentIndex = 0;
  List pages = const [
    ProduitPages(),
    FavoritePage(),
    DetailPages(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            // Ici setState permet de selection l'icone sur le menu a traver currentIndex
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                ),
                label: "menu",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "favorite",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "person",
              ),
            ]));
  }
}
