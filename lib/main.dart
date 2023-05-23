import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/core/data/datasources/configreader.dart';
import 'package:mobile/core/resources/colors.res.dart';
import 'package:mobile/core/resources/string.res.dart';
import 'package:mobile/core/routes/router.dart';
import 'package:mobile/core/services/di.service.dart' show DI;
import 'package:mobile/core/services/providerinit.service.dart';
import 'package:mobile/core/utils/lighttheme.utils.dart';
import 'package:mobile/features/auth/presentation/manager/sendotp.cubit.dart';
import 'package:mobile/features/auth/presentation/pages/mobilenumber.page.dart';
import 'package:mobile/features/auth/presentation/pages/verifyotp.page.dart';
import 'package:mobile/features/auth/presentation/pages/registration.page.dart';
import 'package:mobile/features/dashboard/presentation/pages/dashboard.page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DI.initialize();
  await ConfigReader.initialize();


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
          return MaterialApp.router(
            title: StringRes.appName,
            debugShowCheckedModeBanner: false,
            theme: LightTheme.lightTheme,
            routeInformationProvider: AppRouter.router.routeInformationProvider,
            routeInformationParser: AppRouter.router.routeInformationParser,
            routerDelegate: AppRouter.router.routerDelegate,
          );
        }
    );
  }
}
