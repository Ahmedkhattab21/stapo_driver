
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stapo_driver/features/edit_profile/logic/edit_profile_state.dart';
import 'package:stapo_driver/features/profile/data/repos/profile_repo.dart';
import 'package:stapo_driver/features/register/data/models/get_country_response.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  // final ProfileRepo _profileRepo;

  EditProfileCubit() : super(InitialState());


  List<GetCountryResponse> countries = [
    GetCountryResponse(id: 1, name: "+971",),
    GetCountryResponse(id: 2, name: "+972"),
    GetCountryResponse(id: 3, name: "+973"),
  ];

  static EditProfileCubit get(context) => BlocProvider.of(context);
}
