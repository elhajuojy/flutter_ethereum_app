import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Get.width);
    print(Get.height);
    return Scaffold(
      body: Center(
        child: Text("Welcome page"),
      ),
    );
  }
}
