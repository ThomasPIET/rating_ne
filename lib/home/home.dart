import 'package:flutter/material.dart';
import 'package:ratingmoviesapp/home/popular_container.dart';

import '../shared/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            height: 110,
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 10),
              child: Row(
                children: [
                  SizedBox.fromSize(
                    size: const Size(56, 56),
                    child: ClipOval(
                      child: Image.asset('assets/logo.png'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'RateFlix',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Body
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Discover. Watch. Rate.",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  "Your movie journey starts here.",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                Image.asset(
                  'assets/man-watching-movie.png',
                  width: 200,
                  height: 200,
                )

              ],
            ),
          ),
          const PopularContainer(),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
    );
  }
}
