import 'package:flutter/material.dart';
import 'package:the_basics/routing/route_names.dart';
import 'package:the_basics/widgets/navigation_drawer/drawer_item.dart';
import 'package:the_basics/widgets/navigation_drawer/navigation_drawer_header.dart';

class Navigationdrawer extends StatelessWidget {
  const Navigationdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16,
          ),
        ],
      ),
      child: const Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem(title: 'Episodes', icon: Icons.videocam_outlined, navigationPath: EpisodesRoute,),
          DrawerItem(title: 'About', icon: Icons.help_outlined, navigationPath: AboutRoute,),
        ],
      ),
    );
  }
}
