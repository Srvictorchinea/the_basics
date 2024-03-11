import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:the_basics/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';

class Navigationbar extends StatelessWidget {
  const Navigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => NavigationBarMobile(),  
      tablet: (BuildContext context) => NavigationBarTabletDesktop(),);
  }
}
