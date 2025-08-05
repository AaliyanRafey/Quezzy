import 'package:get/get.dart';

class LeaderboardController extends GetxController {
  var selectedTab = 0.obs; // 0 = Weekly, 1 = All Time

  void changeTab(int index) {
    selectedTab.value = index;
  }
}
