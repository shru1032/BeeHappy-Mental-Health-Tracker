import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mental_health/Fragments/homePage.dart';
import 'package:mental_health/app/sign_in/sign_in_page.dart';
import 'package:mental_health/services/auth.dart';
import 'package:provider/provider.dart';



class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthBase>(context, listen: false);
    return StreamBuilder<User?>(
      stream: auth.authStateChanges(),
      builder: (context, snapshot){
        if (snapshot.connectionState == ConnectionState.active){
          final User? user=snapshot.data;
          if (user == null) {
            return SignInPage();
          }
          return HomePage();
        }
        return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            )
        );
      },
    );
  }
}
