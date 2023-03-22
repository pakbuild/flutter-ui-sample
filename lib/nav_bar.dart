import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class NaviBar extends StatelessWidget {
  const NaviBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
          ),
          child: SizedBox(
            height: 60.0,
            child: BottomNavigationBar(
                currentIndex: newIndex,
                elevation: 0,
                onTap: ((index) {
                  indexChangeNotifier.value = index;
                }),
                iconSize: 30.0,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: const Color.fromARGB(255, 233, 71, 66),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                unselectedItemColor: const Color.fromARGB(255, 10, 3, 3),
                selectedIconTheme: const IconThemeData(
                    color: Color.fromARGB(255, 255, 70, 70)),
                unselectedIconTheme:
                    const IconThemeData(color: Color.fromARGB(255, 8, 1, 1)),
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search_outlined),
                    label: 'Search',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.add_circle_outline_outlined),
                    label: 'Add',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.notification_important_sharp),
                    label: 'Notification',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                ]),
          ),
        );
      },
    );
  }
}
