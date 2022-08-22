import 'dart:developer';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../core/constant/color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good Morning,",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: AppColor.geryColor,
              ),
            ),
            Text(
              "Calisto Wiliams!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColor.primaryDarkColor,
              ),
            ),
          ],
        ),
        const Expanded(child: Text("")),
        GestureDetector(
          onTap: (() {
            log("badge");
          }),
          child: Badge(
              badgeColor: const Color.fromARGB(255, 246, 102, 92),
              badgeContent: const Padding(
                padding: EdgeInsets.all(2.0),
                child: Text(
                  '5',
                  style: TextStyle(
                    color: Color.fromARGB(255, 224, 220, 220),
                    fontSize: 12,
                  ),
                ),
              ),
              child: Icon(
                Icons.notifications,
                size: 30,
                color: AppColor.geryColor,
              )),
        )
      ],
    );
  }
}
