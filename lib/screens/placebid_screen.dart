import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ethereum_app/core/constant/color.dart';
import 'package:flutter_ethereum_app/widgets/customsubcard_widget.dart';
import 'package:get/get.dart';

import '../widgets/custom_dot_widget.dart';

class PlaceBidPage extends StatelessWidget {
  const PlaceBidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 10,
              blurRadius: 10,
              offset: const Offset(1, 1), // changes position of shadow
            ),
          ],
          image: const DecorationImage(
            colorFilter: ColorFilter.srgbToLinearGamma(),
            fit: BoxFit.cover,
            image: AssetImage('assets/images/metaverse.jpg'),
          )),
      child: Padding(
        padding: const EdgeInsets.only(top: 280.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: Get.width * 100,
                height: Get.height * 0.690,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                  color: AppColor.backgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 61, 61, 61).withOpacity(0.2),
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: const Offset(3, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Get.height * 0.05),
                      Text(
                        "Savannah",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: AppColor.primaryDarkColor),
                      ),
                      SizedBox(height: Get.height * 0.03),
                      Text(
                        "Created by ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: AppColor.geryColor),
                      ),
                      SizedBox(height: Get.height * 0.01),
                      Card(
                        elevation: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: Get.width * 0.35,
                            child: Row(children: [
                              Container(
                                width: 28,
                                height: 28,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              Text("   @elhjuojy")
                            ]),
                          ),
                        ),
                      ),
                      Text(
                        " Collection",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: AppColor.geryColor),
                      ),
                      SizedBox(height: Get.height * 0.01),
                      Card(
                        elevation: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: Get.width * 0.45,
                            child: Row(children: [
                              Container(
                                width: 28,
                                height: 28,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              const Text(
                                "   Dream in Heaven",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                      SizedBox(height: Get.height * 0.02),
                      Container(
                        width: 360,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 8,
                                blurRadius: 7,
                                offset:
                                    Offset(1, 1), // changes position of shadow
                              ),
                            ],
                            color: AppColor.backgroundColor,
                            borderRadius: BorderRadius.circular(17)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Current bid",
                                      style: TextStyle(
                                        color: AppColor.geryColor,
                                        fontFamily: "OpenSans",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "0.90 ETH",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          image: const DecorationImage(
                                            colorFilter:
                                                ColorFilter.srgbToLinearGamma(),
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'assets/images/nft1.jpg'),
                                          )),
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      "@elhjuojy",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.geryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.90,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 2,
                                        offset: Offset(
                                            1, 1), // changes position of shadow
                                      ),
                                    ],
                                    color: AppColor.primaryDarkColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Text(
                                    "Place bid",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 233, 229, 229),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
