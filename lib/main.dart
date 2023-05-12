import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/core/resources/colors.res.dart';
import 'package:mobile/core/resources/string.res.dart';
import 'package:mobile/core/utils/lighttheme.utils.dart';
import 'package:mobile/features/auth/presentation/pages/mobilenumber/mobilenumber.page.dart';

Future<void> main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: StringRes.appName,
            debugShowCheckedModeBanner: false,
            theme: LightTheme.lightTheme,
            home:  MobileNumberPage(),
          );
        }
    );
  }
}
