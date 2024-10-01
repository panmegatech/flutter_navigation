import 'package:flutter/material.dart';
import 'package:flutter_navigation/ant_screen.dart';
import 'package:flutter_navigation/app_router.dart';
import 'package:flutter_navigation/bee_screen.dart';
import 'package:flutter_navigation/cat_screen.dart';
import 'package:flutter_navigation/home_screen.dart';
import 'package:flutter_navigation/page_not_found_screen.dart';

import 'package:flutter_navigation/utils/route_name.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   "/": (context) => const HomeScreen(),
      //   "/ant": (context) => const AntScreen(),
      //   "/bee": (context) => const BeeScreen(),
      //   "/cat": (context) => const CatScreen(),
      // },

      initialRoute: RouteName.home,
      onGenerateRoute: AppRouter.generateRoute,
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const PageNotFoundScreen(),
        );
      },
    );
  }
}
