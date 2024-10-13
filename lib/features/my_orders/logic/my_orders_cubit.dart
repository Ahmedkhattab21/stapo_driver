
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stapo_driver/features/profile/data/repos/profile_repo.dart';
import 'package:stapo_driver/features/profile/logic/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo _profileRepo;

  ProfileCubit(this._profileRepo) : super(InitialState());

  static ProfileCubit get(context) => BlocProvider.of(context);
}
