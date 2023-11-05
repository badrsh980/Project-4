import 'package:flutter/material.dart';
import 'package:project4/widgets/order_widget/add_or_remove_order_screen.dart';
import 'package:project4/widgets/order_widget/pic_watch_order_screen.dart';
import 'package:project4/widgets/order_widget/watch_info_order_screen.dart';

class AmountOfOrderContainer extends StatelessWidget {
  const AmountOfOrderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PicWatchOrderScreen(),
                  WatchInfoOrderScreen(),
                  AddOrRemoveOrderScreen(),

                  //
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
