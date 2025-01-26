import 'package:flutter/material.dart';
import 'package:innerix_project/features/home/presentation/cart_screen.dart';
import 'package:innerix_project/features/home/presentation/home_screen.dart';
import 'package:innerix_project/features/profile/presentation/view/profile_screen.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              tooltip: "Home",
              icon: Icon(Icons.home),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.home)],
              ),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}
