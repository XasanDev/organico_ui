import 'package:flutter/cupertino.dart';
import 'package:organico/screens/cart_page.dart';
import 'package:organico/screens/explore_page.dart';
import 'package:organico/screens/home/home_page.dart';
import 'package:organico/screens/profile/profile_page.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int currentPage = 0;
  List<Widget> pages = [
    const HomePage(),
    const ExplorePage(),
    const CartPage(),
     ProfilePage(),
  ];

  void changePages(int value) {
    currentPage = value;
    notifyListeners();
  }
}
