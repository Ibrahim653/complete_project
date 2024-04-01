import 'package:complete_project/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final String? title;
  final Icon? icon;
  final int? maxLength;
  final TextInputType? inputType;
  final Function(String?) validator;
  final Widget? suffexIcon;
  final ValueSetter? onSaved;
  final ValueSetter? onChanged;
  final bool? obsecureText;
  final bool enablePaste;
  final VoidCallback? onTap;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;
  const CustomTextFormField({
    super.key,
    this.title,
    this.icon,
    this.focusNode,
    this.inputType,
    this.suffexIcon,
    this.onSaved,
    required this.validator,
    this.onChanged,
    this.onTap,
    this.obsecureText = false,
    this.enablePaste = true,
    this.maxLength,
    this.contentPadding,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      onTap: onTap,
      maxLines: maxLength ?? 1,
      enableInteractiveSelection: enablePaste,
      keyboardType: inputType,
      onChanged: onChanged,
      validator: (value) {
        return validator(value);
      },
      onSaved: onSaved,
      obscureText: obsecureText ?? false,
      decoration: InputDecoration(
        contentPadding: contentPadding ??
             EdgeInsets.symmetric(vertical: 20.w, horizontal: 18.h),
        filled: true,
        fillColor: Colors.white,
        suffixIcon: suffexIcon,
        hintText: title,
        hintStyle: Styles.font14grey500Weight,
        prefixIcon: icon,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Color(0xFFD6D6D6),
            )),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0xFFD6D6D6),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0xFFD6D6D6),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0xFFD6D6D6),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
