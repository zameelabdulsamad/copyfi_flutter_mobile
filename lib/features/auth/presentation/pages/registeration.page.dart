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
import 'package:mobile/features/auth/presentation/widgets/otptextfield.widget.dart';

class RegistrationPage extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();
  int currentPageIndex = 1;
  List<Widget> pages = [ NamePage(), EmailPage()];


  RegistrationPage({Key? key}) : super(key: key);

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
              Padding(
                padding: SizeConfig.paddingAll10,
                child: const LinearProgressIndicator(
                  value: 0.5,
                  backgroundColor: ColorsRes.progressIndicatorBackgroundColorLight,
                  valueColor: AlwaysStoppedAnimation<Color>(ColorsRes.progressIndicatorValueColorLight),
                ),
              ),
              Expanded(
                child: pages[currentPageIndex],
              ),


            ],
          ),
        ),
      ),
    );
  }
}

class NamePage extends StatelessWidget {

  final TextEditingController nameController = TextEditingController();

   NamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Expanded(
          child: Padding(
            padding: SizeConfig.paddingAll20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const H1TextWidget(textContent: StringRes.askNameH1),
                SizeConfig.sizedBox5(context),
                const P1TextWidget(
                    textContent: StringRes.askNameStatementP1),
                SizeConfig.sizedBox28(context),

                CustomTextFormField(context: context, hintText: StringRes.firstNameTextFieldHint, validator: null, controller: nameController, type: TextInputType.name),

              ],
            ),

          ),
        ),
        Row(
          children: [
            const Expanded(
                child: BottomStatementWidget(
                  textContent: StringRes.privacyStatementP2,
                )),
            NextButtonWidget(
              onPressed: () {}, enabled: false,
            )
          ],
        ),
      ],
    );
  }
}


class EmailPage extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();

   EmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Expanded(
          child: Padding(
            padding: SizeConfig.paddingAll20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const H1TextWidget(textContent: StringRes.askEmailH1),
                SizeConfig.sizedBox5(context),
                const P1TextWidget(
                    textContent: StringRes.emailStatementP1),
                SizeConfig.sizedBox28(context),

                CustomTextFormField(context: context, hintText: StringRes.emailAddressTextFieldHint, validator: null, controller: emailController, type: TextInputType.emailAddress),

              ],
            ),

          ),
        ),
        Row(
          children: [
            const Expanded(
                child: BottomStatementWidget(
                  textContent: StringRes.skipTextButton,
                )),
            NextButtonWidget(
              onPressed: () {}, enabled: false,
            )
          ],
        ),
      ],
    );
  }
}

