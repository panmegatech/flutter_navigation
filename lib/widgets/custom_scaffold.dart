import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final List<Widget> children;

  const CustomScaffold({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [...children],
        ),
      ),
    );
  }
}
