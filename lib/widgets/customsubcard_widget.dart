import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../core/constant/color.dart';
import 'custom_dot_widget.dart';

class SubCard extends StatelessWidget {
  const SubCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 8,
                blurRadius: 7,
                offset: Offset(1, 1), // changes position of shadow
              ),
            ],
            color: AppColor.backgroundColor,
            borderRadius: BorderRadius.circular(17)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
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
                  const SizedBox(width: 30),
                  const Expanded(child: Text("")),
                  const CustomDot(),
                  const SizedBox(width: 5),
                  Text(
                    "Live",
                    style: TextStyle(
                      color: AppColor.geryColor,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "0.90 ETH",
                style: TextStyle(
                  fontFamily: "OpenSans",
                  fontSize: 30,
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
                        borderRadius: BorderRadius.circular(6),
                        image: const DecorationImage(
                          colorFilter: ColorFilter.srgbToLinearGamma(),
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/nft1.jpg'),
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
                width: MediaQuery.of(context).size.width * 0.80,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(1, 1), // changes position of shadow
                    ),
                  ],
                  color: AppColor.primaryDarkColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  "Place bid",
                  style: TextStyle(
                    color: Color.fromARGB(255, 233, 229, 229),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
