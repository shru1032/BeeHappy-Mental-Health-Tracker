import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_health/app/sign_in/email_sign_in_page.dart';
import 'package:mental_health/app/sign_in/sign_in_button.dart';
import 'package:mental_health/app/sign_in/social_sign_in_button.dart';
import 'package:mental_health/services/auth.dart';
import 'package:provider/provider.dart';


class SignInPage extends StatelessWidget {

  Future<void> _signInAnonymously(BuildContext context) async {
    try {
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.signInAnonymously();
    } catch (e) {
      print(e.toString());
    }
  }
  Future<void> _signInWithGoogle(BuildContext context) async {
    try {
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.signInWithGoogle();
    } catch (e) {
      print(e.toString());
    }
  }
  Future<void> _signInWithFacebook(BuildContext context) async {
    try {
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.signInWithFacebook();
    } catch (e) {
      print(e.toString());
    }
  }

  void _signInWithEmail(BuildContext context){
    final auth = Provider.of<AuthBase>(context, listen: false);
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => EmailSignInPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BeeHappy : Mental Health Tracker',
        style: GoogleFonts.pacifico(
        textStyle: TextStyle(
          color: Color(0xffede7e3),
          fontSize: 24
        ),),
        ),
        elevation: 2.0,
      ),
      body: _buildContent(context),
      backgroundColor: Color(0xff82c0cc),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset('images/bee-icon.png', height: 120,),
          Text(
            'Welcome To BeeHappy!',
            textAlign: TextAlign.center,
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(
                color: Color(0xff16697a),
                fontSize: 30.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(
                color: Color(0xff16697a),
                fontSize: 25.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(height: 25.0),
          SocialSignInButton(
            assetName: 'images/google-logo.png',
            text: 'Sign in with Google',
            textColor: Colors.black87,
            color: Color(0xffede7e3),
            onPressed: ()=>_signInWithGoogle(context),
          ),
          SizedBox(height: 8.0),
          SocialSignInButton(
            assetName: 'images/facebook-logo.png',
            text: 'Sign in with Facebook',
            textColor: Color(0xffede7e3),
            color: Color(0xFF334D92),
            onPressed: ()=>_signInWithFacebook(context),
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Sign in with Email',
            textColor: Colors.black,
            color: Color(0xffffcb77),
            onPressed: ()=>_signInWithEmail(context),
          ),
          SizedBox(height: 8.0),
          Text(
            'Or',
            textAlign: TextAlign.center,
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(
                color: Color(0xff16697a),
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          SignInButton(
            text: 'Go Anonymous',
            textColor: Color(0xffede7e3),
            color: Color(0xfffe6d73),
            onPressed: ()=>_signInAnonymously(context),
          ),
        ],
      ),
    );
  }
}
