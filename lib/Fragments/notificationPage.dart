import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_health/navigationDrawer/drawer.dart';

class NotificationPage extends StatelessWidget {
  static const String routeName = '/notificationPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff82c0cc),
        appBar: AppBar(
          title: Text(
            "Notifications",
            style: GoogleFonts.pacifico(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        drawer: NavigationDrawer(),
        body: Center(child: Text("You have no new notifications!")));
  }
}