import 'package:stapo_driver/core/utils/enums.dart';

class TransactionData {
  String id;
  String name;
  String price;
  String date;
  TransactionStatus status;

  TransactionData({
    required this.id,
    required this.name,
    required this.price,
    required this.date,
    required this.status,
  });
}
