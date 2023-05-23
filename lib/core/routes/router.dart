import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/core/services/di.service.dart';
import 'package:mobile/features/auth/presentation/manager/register.cubit.dart';
import 'package:mobile/features/auth/presentation/manager/sendotp.cubit.dart';
import 'package:mobile/features/auth/presentation/manager/verifyotp.cubit.dart';
import 'package:mobile/features/auth/presentation/pages/mobilenumber.page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/features/auth/presentation/pages/verifyotp.page.dart';
import 'package:mobile/features/auth/presentation/pages/registration.page.dart';


class AppRouter {

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: '/',
        name: 'AuthMobileNumberPage',
        builder: (context, state) =>
            BlocProvider<SendOtpCubit>(
              create: (context) => DI.i<SendOtpCubit>(),
              child:   MobileNumberPage(),
            ),
      ),
      GoRoute(
        path: '/verifyOtpPage/:phonenumber',
        name: 'VerifyOtpPage',
        builder: (context, state) =>
            BlocProvider<VerifyOtpCubit>(
              create: (context) => DI.i<VerifyOtpCubit>(),
              child:   VerifyOtpPage(phoneNumber: state.pathParameters['phonenumber']??'',),
            ),
      ),
      GoRoute(
        path: '/registrationPage/:phonenumber',
        name: 'RegistrationPage',
        builder: (context, state) =>
            BlocProvider<RegisterCubit>(
              create: (context) => DI.i<RegisterCubit>(),
              child:   RegistrationPage(phoneNumber: state.pathParameters['phonenumber']??'',),
            ),
      ),

    ],
    //errorBuilder: (context, state) => const NotFoundScreen(),
  );

  static GoRouter get router => _router;

}