import 'package:flutter/material.dart';
import 'package:the_basics/routing/route_names.dart';
import 'package:the_basics/views/about/about_view.dart';
import 'package:the_basics/views/episodes/episodes_view.dart';
import 'package:the_basics/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case EpisodesRoute:
      return _getPageRoute(EpisodesView());
    default:
      // Agregar una declaración de retorno por defecto o lanzar una excepción.
      return _getPageRoute(HomeView()); // Puedes cambiar esto según tu lógica.
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
