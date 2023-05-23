import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/core/data/basestate/fetchdata.state.dart';
import 'package:mobile/core/presentation/widgets/copyfitexticon.widget.dart';
import 'package:mobile/core/presentation/widgets/customtextformfield.widget.dart';
import 'package:mobile/core/presentation/widgets/h1text.widget.dart';
import 'package:mobile/core/presentation/widgets/p1text.widget.dart';
import 'package:mobile/core/resources/colors.res.dart';
import 'package:mobile/core/resources/string.res.dart';
import 'package:mobile/core/utils/sizeconfig.utils.dart';
import 'package:mobile/features/auth/presentation/manager/register.cubit.dart';
import 'package:mobile/features/auth/presentation/widgets/bottomstatement.widget.dart';
import 'package:mobile/features/auth/presentation/widgets/nextbutton.widget.dart';
import 'package:mobile/features/auth/presentation/widgets/systemspecificdialog.widget.dart';

class RegistrationPage extends StatefulWidget {
  final String phoneNumber;

  const RegistrationPage({Key? key, required this.phoneNumber})
      : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final PageController _pageController = PageController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  List<Widget> pages = [];
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    pages = [
      NamePage(nameController: nameController, pageController: _pageController),
      EmailPage(
        emailController: emailController,
        onPressed: () {
          context.read<RegisterCubit>().register(widget.phoneNumber.toString(),nameController.text,emailController.text);
        },
      )
    ];

    _pageController.addListener(() {
      final pageIndex = _pageController.page?.round() ?? 0;
      if (_currentPage != pageIndex) {
        setState(() {
          _currentPage = pageIndex;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, FetchDataWithInitState<void>>(
      listener: (context, state) {
        state.when(
            loading: (loading) {},
            success: (success) {},
            error: (error) {
              showSystemSpecificDialog(context);
              print(error);
            },
            initial: () {});
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
                Padding(
                  padding: SizeConfig.paddingAll10,
                  child: TweenAnimationBuilder(
                    tween: Tween<double>(
                        begin: 0,
                        end: (_currentPage + 1).toDouble() / pages.length),
                    duration: const Duration(milliseconds: 300),
                    builder:
                        (BuildContext context, double value, Widget? child) {
                      return LinearProgressIndicator(
                        value: value,
                        backgroundColor:
                            ColorsRes.progressIndicatorBackgroundColorLight,
                        valueColor: AlwaysStoppedAnimation<Color>(
                            ColorsRes.progressIndicatorValueColorLight),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    // This will prevent swipe navigation
                    children: pages,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NamePage extends StatelessWidget {
  final TextEditingController nameController;
  final PageController pageController;

  NamePage(
      {Key? key, required this.pageController, required this.nameController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: SizeConfig.paddingAll20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const H1TextWidget(textContent: StringRes.askNameH1),
                SizeConfig.sizedBox5(context),
                const P1TextWidget(textContent: StringRes.askNameStatementP1),
                SizeConfig.sizedBox28(context),
                CustomTextFormField(
                    context: context,
                    hintText: StringRes.firstNameTextFieldHint,
                    validator: null,
                    controller: nameController,
                    type: TextInputType.name),
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
              onPressed: () {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              loading: false,
            )
          ],
        ),
      ],
    );
  }
}

class EmailPage extends StatelessWidget {
  final TextEditingController emailController;
  final void Function() onPressed;

  EmailPage({Key? key, required this.emailController, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: SizeConfig.paddingAll20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const H1TextWidget(textContent: StringRes.askEmailH1),
                SizeConfig.sizedBox5(context),
                const P1TextWidget(textContent: StringRes.emailStatementP1),
                SizeConfig.sizedBox28(context),
                CustomTextFormField(
                    context: context,
                    hintText: StringRes.emailAddressTextFieldHint,
                    validator: null,
                    controller: emailController,
                    type: TextInputType.emailAddress),
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
              onPressed: onPressed,
              loading: false,
            )
          ],
        ),
      ],
    );
  }
}
