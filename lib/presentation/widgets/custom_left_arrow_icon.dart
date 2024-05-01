import 'package:flutter/material.dart';

class CustomLeftArrowIcon extends StatelessWidget {
  const CustomLeftArrowIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50,left: 15),
      child: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
        size: 32,
      ),
    );
  }
}
