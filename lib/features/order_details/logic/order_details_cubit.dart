import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stapo_driver/features/order_details/logic/order_details_state.dart';

class OrderDetailsCubit extends Cubit<OrderDetailsState> {
  // final ProfileRepo _profileRepo;

  OrderDetailsCubit() : super(InitialState());

  static OrderDetailsCubit get(context) => BlocProvider.of(context);
}
