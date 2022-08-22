import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_health/Screens/Question1.dart';
import 'package:mental_health/Widgets/custom_raised_button.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  void _questionOne(BuildContext context){
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => QuestionOne(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Take a Quiz to track the progress in your mental health now!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.pacifico(
                    textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                    color: Color(0xffede7e3),
                  ),),
                ),
                Divider(),
                SizedBox(height: 20,),
                Card(
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff16697a), width: 5),
                      borderRadius: BorderRadius.circular(5.0),
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage('images/dashboard.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CustomRaisedButton(
                        height: 30,
                        child: Text('Take a Quiz',
                          style: TextStyle(
                            color: Color(0xffede7e3),
                          ),
                        ),
                        onPressed: () => _questionOne(context),
                        color: Color(0xff16697a),
                      ),
                    ),
                    const SizedBox(width: 8.0,),
                  ],
                ),
                Divider(),

              ],
            ),
      ),
    );
  }
}
