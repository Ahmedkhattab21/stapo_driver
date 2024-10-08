import 'package:stapo_driver/core/services/cache_helper.dart';
import 'package:stapo_driver/core/utils/constant_keys.dart';
import 'package:stapo_driver/features/register/data/models/get_country_response.dart';
import 'package:stapo_driver/features/register/data/repos/register_repo.dart';
import 'package:stapo_driver/features/register/logic/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;

  RegisterCubit(this._registerRepo) : super(InitialState());

  //
  List<GetCountryResponse> countries = [
    GetCountryResponse(id: 1, name: "+971"),
    GetCountryResponse(id: 2, name: "+972"),
    GetCountryResponse(id: 3, name: "+973"),
  ];

  getCounty() {
    // emit(OnGetCountryLoadingState());
    // _registerRepo.getCountry().then((value) {
    //   value.fold((l) {
    //     emit(OnGetCountryErrorState());
    //   }, (r) {
    //     countries = r;
    //     emit(OnGetCountrySuccessState());
    //   });
    // }).catchError((error) {
    //   emit(OnGetCountryCatchErrorState());
    // });
  }

  // GetCountryResponse? selectedCountry;
  //
  // changeSelectedCountry(GetCountryResponse value) {
  //   selectedCountry = value;
  //   emit(OnChangeSelectedCountryState());
  // }
  //
  // bool reminderBox=false;
  //
  // changeReminderBox(bool value) {
  //   reminderBox = value;
  //   emit(OnChangeReminderBoxState());
  // }

  // changeEmailOrMobileState() {
  //   loginScreenState = loginScreenState == 0 ? 1 : 0;
  //   emit(ChangeEmailOrMobileState());
  // }
  //
  // bool secureText = false;
  //
  // changeSecureText() {
  //   secureText = !secureText;
  //   emit(ChangeSecureTextState());
  // }
  //
  // TextEditingController emailController = TextEditingController();
  // TextEditingController phoneController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  //
  // final formKey = GlobalKey<FormState>();
  //
  // loginWithEmailAdnPassword() {
  //   emit(OnLoginWithEmailAndPasswordLoadingState());
  //   _loginRepo
  //       .loginWithEmailAdnPassword(LoginRequestModel(
  //     email: emailController.text.isEmpty
  //         ? phoneController.text
  //         : emailController.text,
  //     password: passwordController.text,
  //   ))
  //       .then((value) {
  //     value.fold((l) {
  //       emit(OnLoginWithEmailAndPasswordErrorState(text: l.message));
  //     }, (r) {
  //       saveUserToken(r.data.token);
  //       sendFCM();
  //       emit(OnLoginWithEmailAndPasswordSuccessState());
  //     });
  //   }).catchError((error) {
  //     emit(OnLoginWithEmailAndPasswordCatchErrorState(text: error.toString()));
  //   });
  // }
  //
  // authenticateWithGoogle(BuildContext context) async {
  //   emit(OnLoginWithSocialLoadingState());
  //   var user = await GoogleSignInApi().googleSignIn();
  //   if (user.accessToken != null) {
  //     loginWithGoogle(context, "google", user.accessToken!);
  //   }
  // }
  //
  // authenticateWithApple(BuildContext context) async {
  //   emit(OnLoginWithAppleLoadingState());
  //   try {
  //     print("object");
  //     UserCredential user = await AppleLoginService().signInApple();
  //     print("object");
  //     if (user.credential != null &&
  //         user.user != null &&
  //         user.user!.email != null) {
  //       loginWithApple(context, "apple", user.user!.email!.split("@")[0],
  //           user.user!.email!, user.user!.uid.toString());
  //     }
  //   } catch (error) {
  //     print(error);
  //     emit(OnLoginWithAppleErrorState());
  //   }
  // }
  //
  // // authenticationWithTwitter() async {
  // //   print("bjhvhjhvhbfdjhbvjhfbhjfvv");
  // //   var user = await TwitterLoginService().signInWithTwitter();
  // //     print("object12212112object12212112object12212112object12212112object12212112");
  // //     print(await user);
  // //     print(await user.credential);
  // //     var data = await user.();
  // //     registerWithProvider("twitter", data.toString());
  // //
  // // }
  //
  // loginWithGoogle(BuildContext context, String provider, String accessToken) {
  //   emit(OnLoginWithSocialLoadingState());
  //   _loginRepo
  //       .loginWithSocial(LoginWithSocialRequestModel(
  //     provider: provider,
  //     accessToken: accessToken,
  //   ))
  //       .then((value) {
  //     value.fold((l) {
  //       emit(OnLoginWithSocialErrorState());
  //     }, (r) {
  //       saveUserToken(r.data.token);
  //       context.pushNamedAndRemoveUntil(Routes.homeAppScreen,
  //           predicate: (routes) => false,
  //           arguments: {
  //             'index': 0,
  //           });
  //       sendFCM();
  //       emit(OnLoginWithSocialSuccessState());
  //     });
  //   }).catchError((error) {
  //     emit(OnLoginWithSocialCatchErrorState());
  //   });
  // }
  //
  // loginWithApple(BuildContext context, String provider, String name,
  //     String email, String accessToken) {
  //   emit(OnLoginWithAppleLoadingState());
  //   _loginRepo
  //       .loginWithApple(LoginWithAppleRequestModel(
  //           provider: provider, tokenId: accessToken, name: name, email: email))
  //       .then((value) {
  //     value.fold((l) {
  //       emit(OnLoginWithAppleErrorState());
  //     }, (r) {
  //       saveUserToken(r.data.token);
  //       context.pushNamedAndRemoveUntil(Routes.homeAppScreen,
  //           predicate: (routes) => false,
  //           arguments: {
  //             'index': 0,
  //           });
  //       sendFCM();
  //       emit(OnLoginWithAppleSuccessState());
  //     });
  //   }).catchError((error) {
  //     emit(OnLoginWithAppleCatchErrorState());
  //   });
  // }
  //
  // sendFCM() async {
  //   print("kpvdfbdnbjnvkjfjkvnfkv");
  //   _loginRepo
  //       .sendFCM(FcmRequestModel(
  //           token: await FirebaseNotificationService.getDeviceToken()))
  //       .then((value) {})
  //       .catchError((error) {});
  // }

  Future<void> saveUserToken(String token) async {
    await CacheHelper.setSecuredString(ConstantKeys.saveTokenToShared, token);
  }

  static RegisterCubit get(context) => BlocProvider.of(context);
}
