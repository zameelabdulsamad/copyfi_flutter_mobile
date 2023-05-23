import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/core/presentation/widgets/h1text.widget.dart';
import 'package:mobile/core/presentation/widgets/p2text.widget.dart';
import 'package:mobile/core/utils/sizeconfig.utils.dart';

void showSystemSpecificDialog(BuildContext context) {
  if (Platform.isAndroid) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
          contentPadding: const EdgeInsets.all(0),
          content: Column(
            mainAxisSize: MainAxisSize.min, // To make the column's height wrap its content
            children: [
              Padding(
                padding: SizeConfig.paddingAll20,
                child: Column(
                  children: const [
                    H1TextWidget(textContent: 'Incorrect password'),
                     P2TextWidget(textContent: 'The password you entered is incorrect. PLease try again.'),

                  ],
                ),
              ),

              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
                width: double.infinity, // Fill the width
                child: TextButton(
                  style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(0.0), // top-left circular corner
                        bottomLeft: Radius.circular(20.r), // bottom-left circular corner
                        topRight: const Radius.circular(0.0), // top-right flat corner
                        bottomRight: Radius.circular(20.r), // bottom-right flat corner
                      ),
                    ),
                  ),),
                  child: Padding(
                    padding: SizeConfig.paddingAll10,
                    child: const Text('OK'),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        );

      },
    );
  } else if (Platform.isIOS) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('iOS Dialog'),
          content: const Text('This is an iOS dialog.'),
          actions: <Widget>[
            CupertinoDialogAction(
              isDefaultAction: true,
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
