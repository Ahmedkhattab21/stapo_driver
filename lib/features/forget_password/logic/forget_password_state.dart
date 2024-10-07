abstract class ForgetPasswordState {}

class InitialState extends ForgetPasswordState {}

class OnGetCountryLoadingState extends ForgetPasswordState {}

class OnGetCountrySuccessState extends ForgetPasswordState {}

class OnGetCountryErrorState extends ForgetPasswordState {}

class OnGetCountryCatchErrorState extends ForgetPasswordState {}

class OnGetUserDataLoadingState extends ForgetPasswordState {}

class OnGetUserDataErrorState extends ForgetPasswordState {}

class OnGetUserDataCatchErrorState extends ForgetPasswordState {}

class OnSendCodeLoadingState extends ForgetPasswordState {}

class OnSendCodeSuccessState extends ForgetPasswordState {
  int userID;

  OnSendCodeSuccessState({required this.userID});
}

class OnSendCodeErrorState extends ForgetPasswordState {}

class OnSendCodeCatchErrorState extends ForgetPasswordState {}
