import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/core/presentation/widgets/copyfitexticon.widget.dart';
import 'package:mobile/core/presentation/widgets/customtextformfield.widget.dart';
import 'package:mobile/core/presentation/widgets/h1text.widget.dart';
import 'package:mobile/core/presentation/widgets/p1text.widget.dart';
import 'package:mobile/core/resources/string.res.dart';
import 'package:mobile/core/utils/sizeconfig.utils.dart';
import 'package:mobile/features/auth/presentation/widgets/bottomstatement.widget.dart';
import 'package:mobile/features/auth/presentation/widgets/nextbutton.widget.dart';
import 'package:mobile/features/auth/presentation/widgets/otptextfield.widget.dart';

class VerifyOtpPage extends StatelessWidget {
  const VerifyOtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: SizeConfig.paddingAll20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: SizeConfig.paddingHorizontal20,
                child: CopyfiTextLogoWidget(
                  height: 45.h,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: SizeConfig.paddingAll20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const H1TextWidget(textContent: StringRes.verifyNumberH1),
                      SizeConfig.sizedBox5(context),
                      const P1TextWidget(
                          textContent: StringRes.enterOtpP1),
                      SizeConfig.sizedBox28(context),

                      const OtpTextFieldWidget()
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  const Expanded(
                      child: BottomStatementWidget(
                        textContent: StringRes.otpArriveInP2,
                      )),
                  NextButtonWidget(
                    onPressed: () {}, enabled: false,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
