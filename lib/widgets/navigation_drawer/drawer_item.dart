import 'package:flutter/material.dart';
import 'package:the_basics/widgets/navigation_bar/navbar_item.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;
  const DrawerItem({super.key, required this.title, required this.icon, required this.navigationPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(children: [
        Icon(icon),
        SizedBox(width: 30,),
        NavBarItem(title: title, navigationPath: navigationPath,),
        
      ],),
    );
  }
}
