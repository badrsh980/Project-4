import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/widgets/watch_info/description_watch.dart';
import 'package:project4/widgets/watch_info/more_description_watch.dart';
import 'package:project4/widgets/watch_info/watch_info_and_count.dart';
import 'package:project4/widgets/watch_info/watch_pic.dart';

class WatchInfoContent extends StatelessWidget {
  const WatchInfoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        WatchPic(),
        height20,
        WatchInfoAndCount(),
        height20,
        DescriptionWatch(),
        height20,
        MoreDescriptionWatch(),
        height20,
        DescriptionWatch(),
        height20,
        DescriptionWatch(),
        height20,
        DescriptionWatch(),
        height20,
        DescriptionWatch(),
      ],
    );
  }
}
