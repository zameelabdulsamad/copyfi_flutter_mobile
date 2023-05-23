import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/core/resources/colors.res.dart';
import 'package:mobile/core/utils/sizeconfig.utils.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpTextFieldWidget extends StatelessWidget {
  final void Function(String) onChanged;
  final void Function(String?) onSaved;
  final void Function(String) onCompleted;

  const OtpTextFieldWidget({
    Key? key, required this.onChanged, required this.onSaved, required this.onCompleted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
        appContext: context,
        length: 6,
        obscureText: false,
        keyboardType: const TextInputType.numberWithOptions(),
        enablePinAutofill: true,
        animationType: AnimationType.none,
        showCursor: false,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(10.r),
          activeFillColor: ColorsRes.textFieldBackgroundColorLight,
          selectedColor: ColorsRes.textFieldBackgroundColorLight,
          activeColor: ColorsRes.textFieldBackgroundColorLight,
          disabledColor: ColorsRes.textFieldBackgroundColorLight,
          inactiveColor: ColorsRes.textFieldBackgroundColorLight,
          inactiveFillColor: ColorsRes.textFieldBackgroundColorLight,
          selectedFillColor: ColorsRes.textFieldBackgroundColorLight,
          fieldWidth: 40.w,
          fieldHeight: 50.h,
        ),
        // errorTextSpace: context.blockSizeVertical * 3,
        // validator: _validator,
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: ColorsRes.accentColorLight,
        enableActiveFill: true,

        onChanged: onChanged,
        onSaved: onSaved,
        onCompleted: onCompleted);
  }
}
