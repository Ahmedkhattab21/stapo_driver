
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stapo_driver/features/add_new_address/logic/add_new_address_state.dart';
import 'package:stapo_driver/features/profile/data/repos/profile_repo.dart';

class AddNewAddressCubit extends Cubit<AddNewAddressState> {
  final ProfileRepo _profileRepo;

  AddNewAddressCubit(this._profileRepo) : super(InitialState());

  static AddNewAddressCubit get(context) => BlocProvider.of(context);
}
