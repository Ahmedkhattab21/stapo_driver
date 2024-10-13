
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stapo_driver/features/profile/data/repos/profile_repo.dart';
import 'package:stapo_driver/features/transaction_history/logic/transaction_history_state.dart';

class TransactionHistoryCubit extends Cubit<TransactionHistoryState> {
  final ProfileRepo _profileRepo;

  TransactionHistoryCubit(this._profileRepo) : super(InitialState());

  static TransactionHistoryCubit get(context) => BlocProvider.of(context);
}
