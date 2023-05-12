import 'package:flutter/material.dart';
import 'package:mobile/core/presentation/widgets/p2text.widget.dart';
import 'package:mobile/core/resources/colors.res.dart';
import 'package:mobile/core/utils/sizeconfig.utils.dart';

class BottomStatementWidget extends StatelessWidget {
  final String textContent;
  final IconData? icon;

  const BottomStatementWidget({Key? key, required this.textContent, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: SizeConfig.paddingHorizontal5,
          child: Icon(icon),
        ),
        Expanded(
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: P2TextWidget(textContent: textContent),
              ),

            ],
          ),
        )
      ],
    );
  }
}
