import 'package:flutter/material.dart';
import 'package:mobile/core/resources/colors.res.dart';
import 'package:mobile/core/utils/sizeconfig.utils.dart';

class NextButtonWidget extends StatelessWidget {
  final void Function() onPressed;
   bool enabled = false;

   NextButtonWidget({
    Key? key,
    required this.onPressed, required this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SizeConfig.paddingHorizontal5,
      child: FloatingActionButton(
        onPressed: enabled?onPressed:null,
        backgroundColor: enabled?ColorsRes.buttonEnabledBackgroundLight:ColorsRes.buttonDisabledBackgroundLight,
        foregroundColor: enabled?ColorsRes.buttonEnabledForegroundLight:ColorsRes.buttonDisabledForegroundLight,
        elevation: 0,
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
