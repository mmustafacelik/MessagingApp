import 'package:flutter/material.dart';
import 'package:messagingapp/core/utils/custom_colors.dart';

class CustomButton extends StatefulWidget {
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final double? maxFontSize;
  final double? minFontSize;
  final double? radius;
  final Color? radiusColor;
  final Widget? prefixIcon;
  final Text? text;
  final double? spaceBetween;
  final Widget? suffixIcon;
  final void Function()? onPressed;

  const CustomButton({
    Key? key,
    this.backgroundColor,
    this.width,
    this.height,
    this.maxFontSize,
    this.minFontSize,
    this.radius,
    this.radiusColor,
    this.prefixIcon,
    this.text,
    this.spaceBetween,
    this.suffixIcon,
    this.onPressed,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color?>(
          widget.backgroundColor ?? CustomColors.color002060,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.radius ?? 18.0),
            side: BorderSide(
                color: widget.radiusColor ?? CustomColors.colorB0C6BB),
          ),
        ),
      ),
      onPressed: widget.onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.prefixIcon != null)
            Row(
              children: [
                widget.prefixIcon!,
                SizedBox(width: widget.spaceBetween ?? 10),
              ],
            ),
          if (widget.text != null)
            Row(
              children: [
                widget.text ?? const Text('Login'),
                SizedBox(width: widget.spaceBetween ?? 10),
              ],
            ),
          widget.suffixIcon ?? const SizedBox.shrink()
        ],
      ),
    );
  }
}
