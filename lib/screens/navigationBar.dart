import 'dart:math';
import 'package:flutter/material.dart';

class navigationBar extends StatelessWidget {
  const navigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}
class navigationBarPage extends StatefulWidget {
  const navigationBarPage({super.key, required this.title});
  final String title;

  @override
  State<navigationBarPage> createState() => _navigationBarPage();
}

class _navigationBarPage extends State<navigationBarPage> {
  @override
  int currentPageIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },

        destinations: const <Widget>[

          NavigationDestination(
            icon: Icon(Icons.house),
            label: 'Accueil',

          ),
          NavigationDestination(
            icon: Icon(Icons.keyboard_arrow_right),
            label: 'Le hack',
          ),
          NavigationDestination(
            icon: Icon(Icons.dataset_sharp),
            label: 'Rien',
          ),
        ],

      ),
    );
  }
}
