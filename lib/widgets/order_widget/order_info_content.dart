import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/widgets/order_widget/amount_of_order_user.dart';
import 'package:project4/widgets/order_widget/check_out_order_buttom.dart';
import 'package:project4/widgets/order_widget/invoice_order_screen.dart';

class OrderInfoContent extends StatelessWidget {
  const OrderInfoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AmountOfOrderContainer(),
        InvoiceOrderScreen(),
        height30,
        CheckOutButtom(),
        height30,
      ],
    );
  }
}
