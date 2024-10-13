
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stapo_driver/features/profile/data/repos/profile_repo.dart';
import 'package:stapo_driver/features/saved_addresses/logic/saved_addresses_state.dart';

class SavedAddressesCubit extends Cubit<SavedAddressesState> {
  final ProfileRepo _profileRepo;

  SavedAddressesCubit(this._profileRepo) : super(InitialState());

  static SavedAddressesCubit get(context) => BlocProvider.of(context);
}
