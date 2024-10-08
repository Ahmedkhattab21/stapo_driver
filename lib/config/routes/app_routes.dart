import 'package:stapo_driver/config/routes/routes.dart';
import 'package:stapo_driver/core/services/services_locator.dart';
import 'package:stapo_driver/features/forget_password/logic/forget_password_cubit.dart';
import 'package:stapo_driver/features/forget_password/ui/forget_password_screen.dart';
import 'package:stapo_driver/features/login/logic/login_cubit.dart';
import 'package:stapo_driver/features/login/ui/login_screen.dart';
import 'package:stapo_driver/features/on_boarding/logic/on_boarding_cubit.dart';
import 'package:stapo_driver/features/on_boarding/ui/on_boarding_screen.dart';
import 'package:stapo_driver/features/register/logic/register_cubit.dart';
import 'package:stapo_driver/features/register/ui/register_screen.dart';
import 'package:stapo_driver/features/reset_password/logic/reset_password_cubit.dart';
import 'package:stapo_driver/features/reset_password/ui/reset_password_screen.dart';
import 'package:stapo_driver/features/sign_up_success/ui/sign_up_success_screen.dart';
import 'package:stapo_driver/features/verify_code/logic/verify_code_cubit.dart';
import 'package:stapo_driver/features/verify_code/ui/verify_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final dynamic args = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => OnBoardingCubit(),
                  child: const OnBoardingScreen(),
                ));

      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => LoginCubit(getIt())..getCounty(),
                  child: const LoginScreen(),
                ));

      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => RegisterCubit(getIt()),
                  child: const RegisterScreen(),
                ));

      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) =>
                      ForgetPasswordCubit(getIt(), getIt())..getCounty(),
                  child: ForgetPasswordScreen(),
                ));

      case Routes.verifyCodeScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => VerifyCodeCubit(getIt()),
                child:
                    (args["isRegister"] == true || args["isRegister"] == null)
                        ? BlocProvider.value(
                            value: RegisterCubit(getIt()),
                            child: VerifyCodeScreen(
                              isRegister: args["isRegister"],
                              userId: args["userId"],
                            ),
                          )
                        : BlocProvider.value(
                            value: ForgetPasswordCubit(getIt(), getIt()),
                            child: VerifyCodeScreen(
                              isRegister: args["isRegister"],
                              userId: args["userId"],
                            ),
                          )));

      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => ResetPasswordCubit(getIt()),
                  child: const ResetPasswordScreen(),
                ));

      case Routes.signUpSuccessScreen:
        return MaterialPageRoute(builder: (_) => const SignUpSuccessScreen());

      // case Routes.propertyDetailsScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => args['categoryId'] == 1
      //           ? (PropertyDetailsCubit(getIt())..getRoomDetails(args['id']))
      //           : (PropertyDetailsCubit(getIt())
      //             ..getPropertyDetails(args['id'])),
      //       child: PropertyDetailsScreen(
      //         categoryId: args['categoryId'],
      //       ),
      //     ),
      //   );
      // case Routes.confirmReservationScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => ConfirmReservationCubit(getIt()),
      //       child: ConfirmReservationScreen(
      //         itemId: args['itemId'],
      //         propertyName: args['propertyName'],
      //         categoryId: args['categoryId'],
      //         moneyBeforeDiscount: args['moneyBeforeDiscount'],
      //         moneyAfterDiscount: args['moneyAfterDiscount'],
      //         personNumbers: args['personNumbers'],
      //         daysNumber: args['daysNumber'],
      //         startDate: args['startDate'],
      //         endDate: args['endDate'],
      //         startTime: args['startTime'],
      //         endTime: args['endTime'],
      //       ),
      //     ),
      //   );
      // case Routes.reservationHistoryScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) =>
      //           ReservationHistoryCubit(getIt())..getMyReservation(),
      //       child: ReservationHistoryScreen(),
      //     ),
      //   );
      // case Routes.favoritesScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => FavoriteCubit(getIt())..getPropertyDetails(),
      //       child: FavoritesScreen(),
      //     ),
      //   );
      // case Routes.chatScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => ChatCubit(getIt())..getAllMessages(),
      //       child: ChatScreen(
      //         myId: args['id'],
      //       ),
      //     ),
      //   );

      default:
        return null;
    }
  }
}
