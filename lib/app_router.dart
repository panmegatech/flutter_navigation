import 'package:flutter/material.dart';
import 'package:flutter_navigation/ant_screen.dart';
import 'package:flutter_navigation/bee_screen.dart';
import 'package:flutter_navigation/cat_screen.dart';
import 'package:flutter_navigation/home_screen.dart';
import 'package:flutter_navigation/page_not_found_screen.dart';
import 'package:flutter_navigation/utils/route_name.dart';

class AppRouter {
  //todo locgic injection , auth ,
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final MaterialPageRoute? pageRoute;
    final routeName = settings.name;

    switch (routeName) {
      case RouteName.ant:
        //todo ant logic
        pageRoute = MaterialPageRoute(
          builder: (context) => const AntScreen(),
        );
        break;
      case RouteName.bee:
        pageRoute = MaterialPageRoute(
          builder: (context) => const BeeScreen(),
        );
        break;
      case RouteName.cat:
        pageRoute = MaterialPageRoute(
          builder: (context) => const CatScreen(),
        );
        break;
      case RouteName.home:
        pageRoute = MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
        break;

      case RouteName.pageNotFound:
      default:
        pageRoute = MaterialPageRoute(
          builder: (context) => const PageNotFoundScreen(),
        );
    }

    return pageRoute;
  }
}
