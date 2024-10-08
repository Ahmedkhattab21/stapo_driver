abstract class RegisterState {}

class InitialState extends RegisterState {}

class OnGetCountryLoadingState extends RegisterState {}
class OnGetCountryErrorState extends RegisterState {}
class OnGetCountrySuccessState extends RegisterState {}
class OnGetCountryCatchErrorState extends RegisterState {}
