import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/core/data/basestate/fetchdata.state.dart';
import 'package:mobile/core/presentation/widgets/copyfitexticon.widget.dart';
import 'package:mobile/core/presentation/widgets/h1text.widget.dart';
import 'package:mobile/core/presentation/widgets/p1text.widget.dart';
import 'package:mobile/core/resources/string.res.dart';
import 'package:mobile/core/routes/router.dart';
import 'package:mobile/core/utils/sizeconfig.utils.dart';
import 'package:mobile/features/auth/presentation/manager/verifyotp.cubit.dart';
import 'package:mobile/features/auth/presentation/widgets/bottomstatement.widget.dart';
import 'package:mobile/features/auth/presentation/widgets/nextbutton.widget.dart';
import 'package:mobile/features/auth/presentation/widgets/otptextfield.widget.dart';
import 'package:mobile/features/auth/presentation/widgets/systemspecificdialog.widget.dart';

class VerifyOtpPage extends StatelessWidget {
  final String phoneNumber;
  static final _formKey = GlobalKey<FormState>();
  const VerifyOtpPage({Key? key, required this.phoneNumber}) : super(key: key);
  void _submitForm(BuildContext context, String value) {
    if (_validator(value) == null) {
      context.read<VerifyOtpCubit>().verifyOtp(
        phoneNumber.toString(),
        value,
      );
    }
  }
  String? _validator(String? value) {
    int? number = int.tryParse(value!);
    if (number == null || value.length != 6) return "Please enter a valid OTP";
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyOtpCubit, FetchDataWithInitState<void>>(
      listener: (context, state) {
        state.when(
            loading: (loading) {},
            success: (success) {
              AppRouter.router.goNamed('RegistrationPage',pathParameters: {'phonenumber': phoneNumber});

            },
            error: (error) {
              showSystemSpecificDialog(context);
              print(error);


            }, initial: () {  });
      },
      child: Scaffold(
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
                        const H1TextWidget(
                            textContent: StringRes.verifyNumberH1),
                        SizeConfig.sizedBox5(context),
                        const P1TextWidget(
                            textContent: StringRes.enterOtpP1),
                        SizeConfig.sizedBox28(context),

                        OtpTextFieldWidget(onChanged: (value ) {  }, onSaved: (value) => _submitForm(context, value!),
                          onCompleted: (value) => _submitForm(context, value),)
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
                    BlocBuilder<VerifyOtpCubit, FetchDataWithInitState<void>>(
                      builder: (context, state) {
                        return NextButtonWidget(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
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
    );
  }
}
