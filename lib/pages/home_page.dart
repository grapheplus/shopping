import 'package:flutter/material.dart';
import 'package:shopping_online/pages/bottom_Nav/bottom_Navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/hom.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              width: double.infinity,
              height: 250,
              child: Image.asset(
                'assets/images/lg volley_Plan de travail 1.png',
              ),
            ),
          ),
          Positioned(
              left: 190,
              bottom: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 80,
                  width: 80,
                  color: Color.fromARGB(255, 194, 130, 84),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => BottomNavigation()));
                      },
                      icon: const Icon(
                        Icons.arrow_forward,
                        size: 50,
                        color: Colors.white,
                      )),
                ),
              ))
        ],
      ),
    );
  }
}
