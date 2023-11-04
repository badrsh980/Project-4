import 'package:project4/Data/user_datasets.dart';
import 'package:project4/Model/User_model.dart';
import 'package:project4/Model/watch_product_model.dart';

// Define and initialize the global lists
List<User> userList = [];
List<Watch> listWatch = [];

late User currentUser;
late Watch currentWatch;

void populateUserList() {
  for (var userData in userDataSets) {
    User user = User.fromJson(userData);
    userList.add(user);
    // Add the created user to the global list
  }
}

void populateWatchList() {
  for (var watchData in watchDataSets) {
    Watch watch = Watch.fromJson(watchData);
    listWatch.add(watch);
    // Add the created watch to the global list
  }
}