import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/core/resources/colors.res.dart';
import 'package:mobile/core/utils/sizeconfig.utils.dart';

class CustomTextFormField extends StatelessWidget {
  final BuildContext context;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final TextEditingController controller;
  final TextInputType type;
  final bool isPassword;
  final bool autoFocus;
  final Function(String)? onChange;

  const CustomTextFormField({
    Key? key,
    required this.context,
    required this.hintText,
    required this.validator,
    required this.controller,
    required this.type,
    this.isPassword = false,
    this.autoFocus = false,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.labelMedium,
      validator: validator,
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onChanged: onChange,
      autofocus: autoFocus,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: Theme.of(context).inputDecorationTheme.contentPadding,

        // enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
        // focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
      ),
    );
  }
}
