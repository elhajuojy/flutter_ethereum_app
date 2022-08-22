import 'dart:developer';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ethereum_app/core/constant/color.dart';
import 'package:flutter_ethereum_app/widgets/custom_input_widget.dart';
import 'package:get/get.dart';

import '../widgets/custom_appbar_widget.dart';
import '../widgets/custom_dot_widget.dart';
import '../widgets/customcard_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: AppColor.backgroundColor,
        floatingActionButton: FloatingActionButton(
          onPressed: (() {}),
          backgroundColor: AppColor.primaryDarkColor,
          child: const Icon(Icons.add),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, right: 30.0, left: 30.0),
            child: Column(
              children: [
                const CustomAppBar(),
                SizedBox(height: Get.height * 0.03),
                CustomInput(label: "Search"),
                SizedBox(height: Get.height * 0.03),
                const CustomTitle(),
                SizedBox(height: Get.height * 0.03),
                Stack(
                  children: const [
                    CustomCard_bigOne(
                      cardWith: 000,
                      cardHight: 200,
                      imageAssets: 'assets/images/one.jpg',
                    ),
                    CustomCard_bigOne(
                      cardWith: 00,
                      cardHight: 190,
                      imageAssets: 'assets/images/three.jpg',
                    ),
                    CustomCard_bigOne(
                      cardWith: 00,
                      cardHight: 180,
                      imageAssets: 'assets/images/nft1.jpg',
                    ),
                  ],
                ),
                const Expanded(child: Text("")),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.home_outlined,
                        size: 35,
                        color: AppColor.primaryDarkColor,
                      ),
                      Icon(
                        Icons.local_offer_outlined,
                        size: 35,
                        color: AppColor.primaryDarkColor,
                      ),
                      const Text(""),
                      Icon(
                        Icons.assessment_outlined,
                        color: AppColor.primaryDarkColor,
                        size: 35,
                      ),
                      Icon(
                        Icons.account_circle_outlined,
                        color: AppColor.primaryDarkColor,
                        size: 35,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
