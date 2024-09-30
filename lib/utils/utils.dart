import 'dart:developer';

import 'package:flutter/material.dart';

void safePop(BuildContext context) {
  //todo safePop

  if (Navigator.canPop(context)) {
    print("pop screen");

    Navigator.pop(context);
  } else {
    print("Can not POP");
  }
}
