import 'package:flutter/material.dart';
import 'package:messagingapp/core/utils/custom_colors.dart';

class CustomTextFormField extends StatefulWidget {
  final String? hintText;
  final double? width;
  final double? height;
  final double maxFontSize;
  final double minFontSize;
  final Color unFocusedBackgroundColor;
  final Color focusedBackgroundColor;
  final Color focusedSuffixColor;
  final Color focusedPrefixColor;
  final Color unfocusedSuffixColor;
  final Color unfocusedPrefixColor;
  final Color focusedShadowColor;
  final Color focusedHintColor;
  final Color unFocusedShadowColor;
  final Color unFocusedHintColor;
  final Color unFocusedBorderColor;
  final Color focusedBorderColor;
  final Color focusedTextColor;
  final Color unFocusedTextColor;
  final double borderWidth;
  final double? shadowBlurRadius;
  final double? shadowSpreadRadius;
  final double? borderRadius;
  final double? focusedHintFontSize;
  final double? unFocusedHintFontSize;
  final double? focusedFontSize;
  final double? unFocusedFontSize;
  final Offset? offset;
  final Widget? suffixIcon;
  final IconData? prefixIcon;
  final EdgeInsetsGeometry? insetPadding;
  final EdgeInsetsGeometry? contentPadding;
  final EdgeInsetsGeometry suffixIconPadding;
  final EdgeInsetsGeometry prefixIconPadding;
  final double? hintTextfontsize;
  final bool obscureText;
  final FontWeight? focusedFontWeight;
  final FontWeight? unFocusedFontWeight;
  final FontWeight? unFocusedHintFontWeight;
  final FontWeight? focusedHintFontWeight;
  final String? focusedHintTextFontFamily;
  final String? unFocusedHintTextFontFamily;
  final String? focusedTextFontFamily;
  final String? unFocusedTextFontFamily;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;

  const CustomTextFormField({
    Key? key,
    this.borderRadius = 24,
    this.hintText,
    this.width = double.infinity,
    this.height = 45,
    this.maxFontSize = 15,
    this.minFontSize = 12,
    this.unFocusedBackgroundColor = Colors.white,
    this.focusedBackgroundColor = Colors.white,
    this.focusedHintColor = CustomColors.color22242A,
    this.unFocusedHintColor = CustomColors.color9AA3A7,
    this.focusedShadowColor = CustomColors.color84ADF5,
    this.unFocusedShadowColor = CustomColors.colorCDCCCF,
    this.unFocusedBorderColor = Colors.transparent,
    this.focusedBorderColor = Colors.transparent,
    this.focusedTextColor = CustomColors.color84ADF5,
    this.unFocusedTextColor = CustomColors.color22242A,
    this.focusedSuffixColor = CustomColors.color84ADF5,
    this.focusedPrefixColor = CustomColors.color84ADF5,
    this.unfocusedSuffixColor = CustomColors.color9AA3A7,
    this.unfocusedPrefixColor = CustomColors.color9AA3A7,
    this.borderWidth = 0,
    this.suffixIcon,
    this.prefixIcon,
    this.shadowBlurRadius = 500,
    this.shadowSpreadRadius = 3,
    this.insetPadding = const EdgeInsets.symmetric(horizontal: 16),
    this.contentPadding = const EdgeInsets.all(2.5),
    this.suffixIconPadding = EdgeInsets.zero,
    this.prefixIconPadding = EdgeInsets.zero,
    this.offset = const Offset(-1.5, -1.5),
    this.focusedHintFontSize = 14,
    this.unFocusedHintFontSize = 14,
    this.hintTextfontsize,
    this.obscureText = false,
    this.focusedHintFontWeight = FontWeight.w400,
    this.unFocusedHintFontWeight = FontWeight.w400,
    this.focusedHintTextFontFamily = 'Raleway',
    this.unFocusedHintTextFontFamily = 'Raleway',
    this.focusedTextFontFamily = 'Raleway',
    this.unFocusedTextFontFamily = 'Raleway',
    this.focusedFontWeight = FontWeight.w400,
    this.unFocusedFontWeight = FontWeight.w400,
    this.focusedFontSize = 14,
    this.unFocusedFontSize = 14,
    this.keyboardType = TextInputType.text,
    this.onChanged,
  }) : super(key: key);
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _focus = false;
  bool _visibility = true;
  Color get _getShadowColor =>
      _focus ? widget.focusedShadowColor : widget.unFocusedShadowColor;
  Color get _getBackgroundColor =>
      _focus ? widget.focusedBackgroundColor : widget.unFocusedBackgroundColor;
  Color get _getHintColor =>
      _focus ? widget.focusedHintColor : widget.unFocusedHintColor;
  Color get _getBorderColor =>
      _focus ? widget.focusedBorderColor : widget.unFocusedBorderColor;
  Color get _getTextColor =>
      _focus ? widget.focusedTextColor : widget.unFocusedTextColor;
  Color get _getSuffixColor =>
      _focus ? widget.focusedSuffixColor : widget.unfocusedSuffixColor;
  Color get _getPrefixColor =>
      _focus ? widget.focusedPrefixColor : widget.unfocusedPrefixColor;
  bool get _getShadow =>
      widget.offset != null &&
      widget.shadowBlurRadius != null &&
      widget.shadowSpreadRadius != null;
  double? get _getHintFontSize =>
      _focus ? widget.focusedHintFontSize : widget.unFocusedHintFontSize;
  double? get _getFontSize =>
      _focus ? widget.focusedFontSize : widget.unFocusedFontSize;
  FontWeight? get _getHintFontWeight =>
      _focus ? widget.focusedHintFontWeight : widget.unFocusedHintFontWeight;
  FontWeight? get _getFontWeight =>
      _focus ? widget.focusedFontWeight : widget.unFocusedFontWeight;
  String? get _getHintTextFontFamily => _focus
      ? widget.focusedHintTextFontFamily
      : widget.unFocusedHintTextFontFamily;
  String? get _getTextFontFamily =>
      _focus ? widget.focusedTextFontFamily : widget.unFocusedTextFontFamily;
  Widget? get _getSuffixIcon => widget.obscureText
      ? GestureDetector(
          onTap: (() {
            setState(() {
              _visibility = !_visibility;
            });
          }),
          child: Icon(
            !_visibility ? Icons.visibility : Icons.visibility_off,
            color: _getSuffixColor,
          ),
        )
      : widget.suffixIcon;
  Widget? get _getPrefixIcon => Icon(
        widget.prefixIcon,
        color: _getSuffixColor,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: _getBackgroundColor,
        boxShadow: _getShadow
            ? [
                BoxShadow(
                  blurStyle: BlurStyle.inner,
                  color: _getShadowColor.withOpacity(.4),
                  offset: widget.offset!,
                  blurRadius: widget.shadowBlurRadius!,
                  spreadRadius: widget.shadowSpreadRadius!,
                ),
              ]
            : null,
        border: widget.borderWidth > 0
            ? Border.all(width: widget.borderWidth, color: _getBorderColor)
            : null,
        borderRadius: widget.borderRadius != null
            ? BorderRadius.circular(
                widget.borderRadius!,
              )
            : null,
      ),
      padding: widget.insetPadding,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (widget.prefixIcon != null)
            Padding(
              padding: widget.prefixIconPadding,
              child: _getPrefixIcon,
            ),
          Expanded(
            child: Focus(
              onFocusChange: (value) => setState(() => _focus = value),
              child: TextFormField(
                onChanged: widget.onChanged,
                obscureText: widget.obscureText && _visibility,
                style: TextStyle(
                  fontSize: _getFontSize,
                  fontWeight: _getFontWeight,
                  fontFamily: _getTextFontFamily,
                  color: _getTextColor,
                ),
                decoration: InputDecoration(
                  contentPadding: widget.contentPadding,
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  hintText: widget.hintText,
                  suffixIconColor: _getSuffixColor,
                  hintStyle: TextStyle(
                    color: _getHintColor,
                    fontSize: _getHintFontSize,
                    fontWeight: _getHintFontWeight,
                    fontFamily: _getHintTextFontFamily,
                  ),
                ),
              ),
            ),
          ),
          if (_getSuffixIcon != null)
            Padding(
              padding: widget.suffixIconPadding,
              child: _getSuffixIcon!,
            ),
        ],
      ),
    );
  }
}
