import 'package:flutter/material.dart';
import 'package:mobile/core/resources/colors.res.dart';
import 'package:mobile/core/utils/sizeconfig.utils.dart';

class NextButtonWidget extends StatelessWidget {
  final void Function() onPressed;

  const NextButtonWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SizeConfig.paddingHorizontal5,
      child: FloatingActionButton(
        onPressed: onPressed,
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
