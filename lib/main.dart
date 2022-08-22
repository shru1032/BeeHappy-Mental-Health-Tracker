import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mental_health/Fragments/contactPage.dart';
import 'package:mental_health/Fragments/eventPage.dart';
import 'package:mental_health/Fragments/helpPage.dart';
import 'package:mental_health/Fragments/notificationPage.dart';
import 'package:mental_health/Fragments/profilePage.dart';
import 'package:mental_health/app/landing_page.dart';
import 'package:mental_health/services/auth.dart';
import 'package:mental_health/Routes/pageRoute.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<AuthBase>(
      create: (context) => Auth(),
      child: MaterialApp(
        title: 'BeeHappy : Mental Health Tracker',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xff16697a),
            secondary: const Color(0xff82c0cc),
          ),
        ),
        home: LandingPage(),
        routes:  {
          pageRoutes.home: (context) => LandingPage(),
          pageRoutes.contact: (context) => ContactPage(),
          pageRoutes.help: (context) => HelpPage(),
          pageRoutes.event: (context) => EventPage(),
          pageRoutes.profile: (context) => ProfilePage(),
          pageRoutes.notification: (context) => NotificationPage(),
        },
      ),
    );
  }
}
