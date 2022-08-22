import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_health/navigationDrawer/drawer.dart';

class ProfilePage extends StatelessWidget {
  static const String routeName = '/profilePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff82c0cc),
        appBar: AppBar(
          title: Text(
            "My Profile",
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ),
        ),
        drawer: NavigationDrawer(),
        body: Center(child: Text("This is profile page")));
  }
}