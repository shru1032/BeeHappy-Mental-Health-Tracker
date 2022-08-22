import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_health/Fragments/homePage.dart';
import 'package:mental_health/Widgets/custom_raised_button.dart';
import 'package:mental_health/navigationDrawer/drawer.dart';

class Motivation extends StatefulWidget {
  const Motivation({Key? key}) : super(key: key);

  @override
  State<Motivation> createState() => _MotivationState();
}

class _MotivationState extends State<Motivation> {
  void _home(BuildContext context){
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => HomePage(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff82c0cc),
      appBar: AppBar(
        title: Text(
          "Well Done",
          style: GoogleFonts.pacifico(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      drawer: NavigationDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget> [
                Text(
                  'You are doing great!\nKeep Going!\n',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.pacifico(
                    textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff16697a),
                    ),),
                ),
                Image.asset('images/bee-icon.png', height: 120,),
                Divider(),
                Text(
                  '"You are more precious to this world than you\'ll ever know."\n~Lili Rhinehart',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.pacifico(
                    textStyle: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff16697a),
                    ),),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CustomRaisedButton(
                        height: 30,
                        child: Text('Go to Dashboard',
                          style: TextStyle(
                            color: Color(0xffede7e3),
                          ),
                        ),
                        onPressed: () => _home(context),
                        color: Color(0xff16697a),
                      ),
                    ),
                    const SizedBox(width: 8.0,),
                  ],

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
