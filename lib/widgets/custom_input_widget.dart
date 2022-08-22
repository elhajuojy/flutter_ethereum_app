import 'package:flutter/material.dart';
import 'package:flutter_ethereum_app/core/constant/color.dart';

class CustomInput extends StatelessWidget {
  CustomInput({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ]),
      width: double.infinity,
      height: 60,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 10),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: const Align(
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: Icon(
                  Icons.search_outlined,
                )),
            border: InputBorder.none,
            hintText: label,
            hintStyle: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.normal,
              color: AppColor.geryColor,
              fontFamily: 'OpenSans',
            )),
      ),
    );
  }
}
