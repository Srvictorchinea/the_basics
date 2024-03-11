import 'package:flutter/material.dart';
import 'package:the_basics/locator.dart';
import 'package:the_basics/services/navigation_services.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem({super.key, required this.title, required this.navigationPath});

  @override
  Widget build(BuildContext context) {
    
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          locator<NavigationService>().navigateTo(navigationPath);
        },
        child: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
