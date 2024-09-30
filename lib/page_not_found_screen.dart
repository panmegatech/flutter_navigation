import 'package:flutter/material.dart';
import 'package:flutter_navigation/widgets/custom_scafold.dart';
import 'package:flutter_navigation/widgets/custom_text.dart';

class PageNotFoundScreen extends StatelessWidget {
  const PageNotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScafold(
      children: [CustomText("Page not found.")],
    );
  }
}
