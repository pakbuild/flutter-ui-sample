import 'package:flutter/material.dart';
import 'package:flutter_appui/home_page.dart';
import 'package:flutter_appui/nav_bar.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final _pages = [
    const HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, child) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const NaviBar(),
    );
  }
}
