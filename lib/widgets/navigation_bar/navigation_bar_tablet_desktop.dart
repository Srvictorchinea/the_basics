import 'package:flutter/material.dart';
import 'package:the_basics/routing/route_names.dart';
import 'package:the_basics/widgets/navigation_bar/navbar_item.dart';
import 'package:the_basics/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem(title: 'Episodes', navigationPath: EpisodesRoute),
              SizedBox(width: 60,),
              NavBarItem(title: 'About', navigationPath: AboutRoute),
            ],
          )
        ],
      ),
    );
  }
}
