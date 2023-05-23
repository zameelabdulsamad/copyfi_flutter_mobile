import 'package:flutter/material.dart';
import 'package:mobile/core/resources/colors.res.dart';
import 'package:mobile/core/utils/sizeconfig.utils.dart';

class NextButtonWidget extends StatelessWidget {
  final void Function() onPressed;
   bool loading = false;

   NextButtonWidget({
    Key? key,
    required this.onPressed, required this.loading
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SizeConfig.paddingHorizontal5,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: ColorsRes.buttonEnabledBackgroundLight,
        foregroundColor: ColorsRes.buttonEnabledForegroundLight,
        elevation: 0,
        child: loading?Padding(
          padding: SizeConfig.paddingAll10,
          child: const CircularProgressIndicator(color: ColorsRes.buttonEnabledForegroundLight,),
        ):const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
