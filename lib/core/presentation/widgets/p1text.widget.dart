import 'package:flutter/material.dart';

class P1TextWidget extends StatelessWidget {
  final String textContent;

  const P1TextWidget({
    Key? key,
    required this.textContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text(
          textContent,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
