import 'package:flutter/material.dart';
import 'package:flutter_navigation/widgets/custom_scafold.dart';
import 'package:flutter_navigation/widgets/custom_text.dart';

class CatScreen extends StatelessWidget {
  const CatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScafold(
      children: [
        const CustomText('CatScreen'),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: () {
              print("pop stack");
              Navigator.pop(context);
            },
            child: const Text("POP")),
      ],
    );
  }
}
