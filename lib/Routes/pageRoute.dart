import 'package:flutter/material.dart';
import 'package:mental_health/Screens/Question1.dart';
import '../Fragments/homePage.dart';
import '../Fragments/contactPage.dart';
import '../Fragments/helpPage.dart';
import '../Fragments/eventPage.dart';
import '../Fragments/notificationPage.dart';
import '../Fragments/profilePage.dart';

class pageRoutes extends StatelessWidget {
  const pageRoutes({Key? key}) : super(key: key);
  static const String home = HomePage.routeName;
  static const String contact = ContactPage.routeName;
  static const String help = HelpPage.routeName;
  static const String event = EventPage.routeName;
  static const String profile = ProfilePage.routeName;
  static const String notification = NotificationPage.routeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:null,
    );
  }
}
