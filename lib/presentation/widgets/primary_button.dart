import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constraints.dart';
import 'custom_text.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.maximumSize = const Size(double.infinity, 52),
    required this.text,
    this.fontSize = 14.0,
    required this.onPressed,
    this.textColor = whiteColor,
    this.bgColor = primaryColor,
    this.minimumSize = const Size(double.infinity, 52),
    this.borderRadiusSize = 10.0,
    this.fontWeight = FontWeight.w600,
  }) : super(key: key);

  final VoidCallback? onPressed;

  final String text;
  final Size maximumSize;
  final Size minimumSize;
  final double fontSize;
  final double borderRadiusSize;
  final Color textColor;
  final Color bgColor;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(borderRadiusSize);
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(bgColor),
        splashFactory: NoSplash.splashFactory,
        shadowColor: MaterialStateProperty.all(transparent),
        overlayColor: MaterialStateProperty.all(transparent),
        elevation: MaterialStateProperty.all(0.0),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: borderRadius)),
        minimumSize: MaterialStateProperty.all(minimumSize),
        maximumSize: MaterialStateProperty.all(maximumSize),
      ),
      child: CustomText(
        text: text,
        color: textColor,
        fontSize: fontSize.sp,
        height: 1.5.h,
        fontWeight: fontWeight,
      ),
    );
  }
}
