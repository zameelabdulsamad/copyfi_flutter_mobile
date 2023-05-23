import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/core/data/basestate/fetchdata.state.dart';
import 'package:mobile/core/presentation/widgets/copyfitexticon.widget.dart';
import 'package:mobile/core/presentation/widgets/customtextformfield.widget.dart';
import 'package:mobile/core/presentation/widgets/h1text.widget.dart';
import 'package:mobile/core/presentation/widgets/p1text.widget.dart';
import 'package:mobile/core/resources/string.res.dart';
import 'package:mobile/core/routes/router.dart';
import 'package:mobile/core/services/di.service.dart';
import 'package:mobile/core/utils/sizeconfig.utils.dart';
import 'package:mobile/features/auth/presentation/widgets/bottomstatement.widget.dart';
import 'package:mobile/features/auth/presentation/widgets/nextbutton.widget.dart';
import 'package:mobile/features/auth/presentation/widgets/systemspecificdialog.widget.dart';

import '../manager/sendotp.cubit.dart';

class MobileNumberPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController phoneController = TextEditingController();

  MobileNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SendOtpCubit, FetchDataWithInitState<void>>(
      listener: (context, state) {
        state.when(
            loading: (loading) {},
            success: (success) {
              AppRouter.router.goNamed('VerifyOtpPage',pathParameters: {'phonenumber':phoneController.text});
            },
            error: (error) {
              showSystemSpecificDialog(context);
              print(error);


            }, initial: () {  });
      },
      child: Scaffold(
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
                      BlocBuilder<SendOtpCubit, FetchDataWithInitState<void>>(
                        builder: (context, state) {
                          return NextButtonWidget(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                FocusScope.of(context).unfocus();
                                context.read<SendOtpCubit>().sendOtp(
                                    phoneController.text);


                              }
                            },
                            loading: state.maybeWhen(
                              orElse: () => false, // The loading spinner is hidden in other states.
                              loading: (loading) => true, // The loading spinner is shown when loading.
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

