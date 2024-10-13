import 'package:stapo_driver/core/utils/app_colors_white_theme.dart';
import 'package:stapo_driver/core/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stapo_driver/core/utils/styles.dart';
import 'package:stapo_driver/features/transaction_history/domain/transaction_data.dart';
import 'package:stapo_driver/features/transaction_history/ui/widgets/transaction_item_widget.dart';

class TransactionHistoryScreen extends StatelessWidget {
  List<TransactionData> items = [
    TransactionData(
        id: "TID 9382042",
        name:
            "بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا",
        price: "2,000 SR",
        date: "25th Sep 2024",
        status: TransactionStatus.success),
    TransactionData(
        id: "TID 9382042",
        name:
            "بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا",
        price: "2,000 SR",
        date: "25th Sep 2024",
        status: TransactionStatus.rejected),
    TransactionData(
        id: "TID 9382042",
        name:
            "بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا",
        price: "2,000 SR",
        date: "25th Sep 2024",
        status: TransactionStatus.inProgress),
    TransactionData(
        id: "TID 9382042",
        name:
            "بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا",
        price: "2,000 SR",
        date: "25th Sep 2024",
        status: TransactionStatus.success),
    TransactionData(
        id: "TID 9382042",
        name:
            "بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا",
        price: "2,000 SR",
        date: "25th Sep 2024",
        status: TransactionStatus.rejected),
    TransactionData(
        id: "TID 9382042",
        name:
            "بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا",
        price: "2,000 SR",
        date: "25th Sep 2024",
        status: TransactionStatus.inProgress),
    TransactionData(
        id: "TID 9382042",
        name:
            "بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا",
        price: "2,000 SR",
        date: "25th Sep 2024",
        status: TransactionStatus.success),
    TransactionData(
        id: "TID 9382042",
        name:
            "بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا",
        price: "2,000 SR",
        date: "25th Sep 2024",
        status: TransactionStatus.rejected),
    TransactionData(
        id: "TID 9382042",
        name:
            "بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا بيفار جل العناية بالعيون للحيوانات الا",
        price: "2,000 SR",
        date: "25th Sep 2024",
        status: TransactionStatus.inProgress),
  ];

  TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: Text("المعاملات", style: TextStyles.font16BlackColorEWeight400),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 30.h),
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: items.length,
            separatorBuilder: (context, index) {
              return Divider(color: AppColors.greyColorE8);
            },
            itemBuilder: (context, index) {
              return TransactionItemWidget(item: items[index]);
            }),
      ),
    );
  }
}
