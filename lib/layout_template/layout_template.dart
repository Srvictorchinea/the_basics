import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/locator.dart';
import 'package:the_basics/routing/router.dart';
import 'package:the_basics/services/navigation_services.dart';
import 'package:the_basics/widgets/centered_view/centered_view.dart';
import 'package:the_basics/widgets/navigation_bar/navigation_bar.dart';
import 'package:the_basics/widgets/navigation_drawer/navigation_drawer.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? Navigationdrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              Navigationbar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationServices>().navigatorKey,
                  onGenerateRoute: generateRoute,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
