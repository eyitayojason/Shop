import 'package:flutter/material.dart';
import 'package:xd/Widgets/BottomNavBar.dart';
import 'package:xd/Widgets/ProfilePageWidgets.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  bool focus1 = false;
  bool focus2 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavBar(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(),
          actions: <Widget>[
            Expanded(
              child: MessagePageAppBarButton(
                buttonText: "Favorites",
                textColor: focus1 ? Colors.green[300] : Colors.black45,
                onPressed: () {
                  setState(() {
                    focus1 = true;
                    focus2 = false;
                  });
                },
              ),
            ),
            Expanded(
              child: MessagePageAppBarButton(
                buttonText: "Subscribing",
                textColor: focus2 ? Colors.green[300] : Colors.black45,
                onPressed: () {
                  setState(() {
                    focus2 = true;
                    focus1 = false;
                  });
                },
              ),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                ErrorImage(),
                SizedBox(
                  height: 20,
                ),
                Text("No Favorites Yet")
              ],
            )
          ],
        ),
      ),
    );
  }
}
