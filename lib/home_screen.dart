import 'package:flutter/material.dart';
import 'package:flutter_navigation/ant_screen.dart';
import 'package:flutter_navigation/utils/route_name.dart';
import 'package:flutter_navigation/utils/utils.dart';
import 'package:flutter_navigation/widgets/custom_scaffold.dart';
import 'package:flutter_navigation/widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      children: [
        const CustomText('HomeScreen'),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: () {
              print("pushAnt");

              Navigator.pushNamed(context, RouteName.ant);
            },
            child: const CustomText(
              "pushAnt",
              color: Colors.green,
            )),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: () {
              print("pushBee");

              Navigator.pushNamed(context, RouteName.bee);
            },
            child: const CustomText(
              "pushBee",
              color: Colors.amber,
            )),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: () {
              print("pushCat");

              Navigator.pushNamed(context, RouteName.cat);
            },
            child: const CustomText("pushCat")),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: () {
              print("pushError");

              Navigator.pushNamed(context, RouteName.pageNotFound);
            },
            child: const CustomText(
              "[push Error]",
              color: Colors.red,
            )),
        const SizedBox(
          height: 30,
        ),
        const Divider(),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: () {
              safePop(context);
            },
            child: const CustomText(
              "[pop screen]",
              color: Colors.blue,
            )),
      ],
    );
  }
}
