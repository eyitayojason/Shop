import 'package:flutter/material.dart';
import 'package:xd/Screens/Favorites.dart';
import 'package:xd/Screens/HomePage.dart';
import 'package:xd/Screens/MessagesPage.dart';
import 'package:xd/Screens/ProfilePage.dart';
import '../konstants.dart';

final pages = [
  HomePage(),
  FavoritesPage(),
  MessagesPage(),
  ProfilePage(),
];
final items = [
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    title: Text(
      "Home",
    ),
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.star_border),
    title: Text(
      "Favorite",
    ),
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.account_circle),
    title: Text(
      "Profile",
    ),
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.message),
    title: Text(
      "Messages",
    ),
  )
];

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 20,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: kButtomNavBarText,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData().copyWith(
          color: Colors.green,
          size: 25,
        ),
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedpage,
        unselectedIconTheme:
            IconThemeData().copyWith(color: Colors.black, size: 20),
        onTap: (int index) {
          setState(() {
            selectedpage = index;
          });
        },
        items: items);
  }
}
