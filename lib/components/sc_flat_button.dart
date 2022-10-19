import 'package:flutter/material.dart';
import '/config/styles.dart';

class SCFlatButton extends StatelessWidget {
  final GestureTapCallback? onTap;
  final Color? textColor;
  final Color? backgroundColor;
  final Widget child;

  const SCFlatButton(
    Key? key,
    this.child, {
    this.textColor,
    this.backgroundColor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: (textColor ?? Colors.white),
        backgroundColor: (backgroundColor ?? Styles.primaryHighlightColor),
        elevation: 1,
        textStyle: const TextStyle(
            fontFamily: Styles.primaryFontRegular,
            fontWeight: Styles.primaryFontWeightLight,
            fontSize: Styles.primaryButtonFontSize),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
      ),
      child: child,
      onPressed: onTap,
    );
  }
}
