import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';

class WatchInfoAndCount extends StatelessWidget {
  const WatchInfoAndCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          children: [
            Text(
              "watch name",
              style: TextStyle(
                  fontFamily: "PlayfairDisplay",
                  color: appColorBlue,
                  fontWeight: FontWeight.w600,
                  fontSize: 25),
            ),
            height10,
            Text(
              "\$ watch price",
              style: TextStyle(
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
