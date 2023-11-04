import 'package:flutter/material.dart';
import 'package:project4/Model/watch_product_model.dart';
import 'package:project4/constant/constant.dart';

class WatchInfoAndCount extends StatelessWidget {
  const WatchInfoAndCount({super.key, required this.watch});
  final Watch watch;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              watch.name,
              style: const TextStyle(
                  fontFamily: "PlayfairDisplay",
                  color: appColorBlue,
                  fontWeight: FontWeight.w600,
                  fontSize: 25),
            ),
            height10,
            Text(
              "\$ ${watch.price.toString()}",
              style: const TextStyle(
                  fontFamily: "PlayfairDisplay",
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            )
          ],
        ),
        SizedBox(
          width: 140,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    color: appColorYellow, shape: BoxShape.circle),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove,
                      color: appColorBlue,
                    )),
              ),
              const Text("1"),
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    color: appColorYellow, shape: BoxShape.circle),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: appColorBlue,
                    )),
              ),
            ],
          ),
        )
      ],
    );
  }
}
