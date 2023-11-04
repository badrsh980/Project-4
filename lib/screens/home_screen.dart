import 'package:flutter/material.dart';
import 'package:project4/Data/gloable_data.dart';
import 'package:project4/Data/watch_datasets.dart';
import 'package:project4/Model/watch_product_model.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/widgets/home_widget/app_bar_home_screen.dart';
import 'package:project4/widgets/home_widget/shopping_categories.dart';
import 'package:project4/widgets/home_widget/watch_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    for (var element in watchDataSets) {
      listWatch.add(Watch.fromJason(element));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appColorWhite,
        appBar: AppBarHomeScreen(context),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //------------------------------
                Text(
                  "Hello",
                  style: TextStyle(
                      fontFamily: 'PlayfairDisplay',
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: appColorBlue),
                ),
                //-----------------------------
                Text(
                  "Choose Your Top Brands",
                  style: TextStyle(
                      fontFamily: 'PlayfairDisplay',
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                //----------------------------
                ShoppingCategories(),
                //----------------------------
                WatchView()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
