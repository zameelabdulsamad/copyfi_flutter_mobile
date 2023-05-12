import 'package:flutter/material.dart';

class H1TextWidget extends StatelessWidget {
  final String textContent;

  const H1TextWidget({
    Key? key,
    required this.textContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textContent,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
