import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_health/Fragments/contactPage.dart';
import 'package:mental_health/Screens/Question2.dart';
import 'package:mental_health/Widgets/custom_raised_button.dart';
import 'package:mental_health/navigationDrawer/drawer.dart';

class QuestionOne extends StatefulWidget {
  const QuestionOne({Key? key}) : super(key: key);

  @override
  State<QuestionOne> createState() => _QuestionOneState();
}

class _QuestionOneState extends State<QuestionOne> {
  double _currentSliderValue = 0;

  void _questionTwo(BuildContext context){
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => QuestionTwo(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff82c0cc),
        appBar: AppBar(
          title: Text(
            "Question 1",
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
                'How many people did you meet today?',
                textAlign: TextAlign.center,
                style: GoogleFonts.pacifico(
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff16697a),
                  ),),
              ),
              Divider(),
              Image.asset('images/meeting-people.png', height: 250, width: 250,),
              Divider(),
              Slider(
                  value: _currentSliderValue,
                  max: 100,
                  divisions: 50,
                  label: _currentSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState((){
                      _currentSliderValue = value;
                    });
                  }
              ),
              Divider(),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CustomRaisedButton(
                      height: 30,
                      child: Text('Next',
                        style: TextStyle(
                          color: Color(0xffede7e3),
                        ),
                      ),
                      onPressed: () => _questionTwo(context),
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
