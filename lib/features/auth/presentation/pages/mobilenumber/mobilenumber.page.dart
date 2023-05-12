import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/core/presentation/widgets/copyfitexticon.widget.dart';
import 'package:mobile/core/presentation/widgets/customtextformfield.widget.dart';
import 'package:mobile/core/presentation/widgets/h1text.widget.dart';
import 'package:mobile/core/presentation/widgets/p1text.widget.dart';
import 'package:mobile/core/resources/colors.res.dart';
import 'package:mobile/core/resources/string.res.dart';
import 'package:mobile/core/utils/sizeconfig.utils.dart';
import 'package:mobile/features/auth/presentation/widgets/bottomstatement.widget.dart';
import 'package:mobile/features/auth/presentation/widgets/nextbutton.widget.dart';

class MobileNumberPage extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();

  MobileNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
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
                      const H1TextWidget(textContent: StringRes.askNumberH1),
                      SizeConfig.sizedBox5(context),
                      const P1TextWidget(
                          textContent: StringRes.confirmationCodeStatementP1),
                      SizeConfig.sizedBox28(context),

                      CustomTextFormField(
                          context: context,
                          hintText: StringRes.phoneNumberTextFieldHint,
                          validator: null,
                          controller: phoneController,
                          type: TextInputType.phone)
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  const Expanded(
                      child: BottomStatementWidget(
                    textContent: StringRes.privacyStatementP2,
                    icon: Icons.lock,
                  )),
                  NextButtonWidget(
                    onPressed: () {},
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
