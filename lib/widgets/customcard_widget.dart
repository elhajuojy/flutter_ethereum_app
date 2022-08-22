import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_ethereum_app/core/constant/color.dart';
import 'package:flutter_ethereum_app/widgets/custom_dot_widget.dart';
import 'package:flutter_ethereum_app/widgets/customsubcard_widget.dart';
import 'package:get/get.dart';

class CustomCard_bigOne extends StatelessWidget {
  const CustomCard_bigOne({
    Key? key,
    required this.cardWith,
    required this.cardHight,
    required this.imageAssets,
  }) : super(key: key);
  final double cardWith;
  final double cardHight;
  final String imageAssets;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: cardHight, bottom: 20),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 10,
                blurRadius: 10,
                offset: const Offset(1, 1), // changes position of shadow
              ),
            ],
            image: DecorationImage(
              colorFilter: ColorFilter.srgbToLinearGamma(),
              fit: BoxFit.cover,
              image: AssetImage(imageAssets),
            )),
        child: SubCard());
  }
}

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Row(
            children: [
              const CustomDot(),
              const SizedBox(width: 10),
              Text(
                "Trending Action ",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    color: AppColor.primaryDarkColor),
              ),
              SizedBox(width: Get.width * 0.27),
              GestureDetector(
                onTap: () {
                  log("see All");
                },
                child: const Text(
                  "See all",
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
