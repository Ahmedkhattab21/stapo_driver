abstract class ResetPasswordState {}

class InitialState extends ResetPasswordState {}

class OnGetCountryLoadingState extends ResetPasswordState {}
class OnGetCountrySuccessState extends ResetPasswordState {}
class OnGetCountryErrorState extends ResetPasswordState {}
class OnGetCountryCatchErrorState extends ResetPasswordState {}

class OnChangeSelectedCountryState extends ResetPasswordState {}
class OnChangeReminderBoxState extends ResetPasswordState {}
