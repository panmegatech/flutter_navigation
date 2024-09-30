import 'package:flutter/material.dart';
import 'package:flutter_navigation/utils/utils.dart';
import 'package:flutter_navigation/widgets/custom_scafold.dart';
import 'package:flutter_navigation/widgets/custom_text.dart';

class AntScreen extends StatelessWidget {
  const AntScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScafold(
      children: [
        const CustomText('AntScreen'),
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
