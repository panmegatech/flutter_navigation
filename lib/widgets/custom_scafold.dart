import 'package:flutter/material.dart';

class CustomScafold extends StatelessWidget {
  final List<Widget> children;

  const CustomScafold({super.key, required this.children});

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
