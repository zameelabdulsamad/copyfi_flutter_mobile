//
//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:mobile/core/services/di.service.dart';
// import 'package:mobile/features/auth/presentation/manager/mobilenumber/sendotpcubit/sendotp.cubit.dart';
//
// class ProviderInit extends StatelessWidget {
//   final Widget child;
//   const ProviderInit({Key? key, required this.child}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(create: (context) => DI.i<SendOtpCubit>()),
//
//       ],
//       child: child,
//     );
//   }
// }
