import 'package:flutter/material.dart';
import 'package:flutter_ethereum_app/core/constant/imageasset.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: Get.width,
            height: Get.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImageAsset.imageTwo),
            )),
            child: SafeArea(
                child: Expanded(
              child: Column(
                children: [
                  Image.asset(
                    AppImageAsset.logo,
                    width: 200,
                  ),
                  const Text(
                    'The New World \n for Your NFT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Sea is the worlds first and largest \n NFT marketplace',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 238, 235, 235),
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.46,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 270),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: const Offset(
                                3, 4), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                      onPressed: (() {
                        print("object");
                      }),
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ))));
  }
}
