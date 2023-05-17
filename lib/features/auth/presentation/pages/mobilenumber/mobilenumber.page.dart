import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/core/presentation/manager/formcubit/formbutton.state.dart';
import 'package:mobile/core/presentation/manager/formcubit/formvalidation.cubit.dart';
import 'package:mobile/core/presentation/widgets/copyfitexticon.widget.dart';
import 'package:mobile/core/presentation/widgets/customtextformfield.widget.dart';
import 'package:mobile/core/presentation/widgets/h1text.widget.dart';
import 'package:mobile/core/presentation/widgets/p1text.widget.dart';
import 'package:mobile/core/resources/string.res.dart';
import 'package:mobile/core/utils/sizeconfig.utils.dart';
import 'package:mobile/features/auth/presentation/widgets/bottomstatement.widget.dart';
import 'package:mobile/features/auth/presentation/widgets/nextbutton.widget.dart';

import '../../manager/mobilenumber/sendotpcubit/sendotp.cubit.dart';

class MobileNumberPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController phoneController = TextEditingController();

  MobileNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FormValidationCubit(
        controller: phoneController,
        validator: (value) {
          return value.isNotEmpty;
        })),
        // BlocProvider(create: (context) => SendOtpCubit())
        

      ],

      child: BlocBuilder<FormValidationCubit, FormButtonState>(
        builder: (context, state) {
          final formValidationCubit =
          BlocProvider.of<FormValidationCubit>(context);
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
                child: Form(
                  key: _formKey,
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
                              const H1TextWidget(
                                  textContent: StringRes.askNumberH1),
                              SizeConfig.sizedBox5(context),
                              const P1TextWidget(
                                  textContent:
                                  StringRes.confirmationCodeStatementP1),
                              SizeConfig.sizedBox28(context),
                              CustomTextFormField(
                                  context: context,
                                  hintText: StringRes.phoneNumberTextFieldHint,
                                  validator: (value) {
                                    if (value!.isEmpty || value == '') {
                                      return StringRes
                                          .phoneNumberTextFieldValidator;
                                    } else if (value.length != 10) {
                                      return StringRes
                                          .phoneNumberTextFieldValidator;
                                    } else if (value[0] == '0') {
                                      return StringRes
                                          .phoneNumberTextFieldValidator;
                                    }
                                  },
                                  controller: formValidationCubit.controller,
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
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                FocusScope.of(context).unfocus();
                              }
                            }, enabled: state.isButtonEnabled,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

