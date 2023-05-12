import 'package:flutter/material.dart';
import 'package:mobile/core/resources/images.res.dart';
import 'package:mobile/core/utils/sizeconfig.utils.dart';


class CopyfiTextLogoWidget extends StatelessWidget {
  final double? width;
  final double? height;

  const CopyfiTextLogoWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        child: Hero(
          tag: "copyfi-text-logo",
          child: Image.asset(
            ImagesResPng.copyfiTextLogo,
            fit: BoxFit.cover,
          ),
        ));
  }
}
