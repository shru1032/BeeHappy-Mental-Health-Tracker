import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_health/Screens/Question3.dart';
import 'package:mental_health/common_widgets/custom_raised_button.dart';
import 'package:mental_health/navigationDrawer/drawer.dart';

class QuestionTwo extends StatefulWidget {
  const QuestionTwo({Key? key}) : super(key: key);

  @override
  State<QuestionTwo> createState() => _QuestionTwoState();
}

class _QuestionTwoState extends State<QuestionTwo> {

  double _currentSliderValue = 0;

  void _questionThree(BuildContext context){
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => QuestionThree(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff82c0cc),
        appBar: AppBar(
          title: Text(
            "Question 2",
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
                    'How happy do you feel today?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.pacifico(
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff16697a),
                      ),),
                  ),
                  Divider(),
                  Image.asset('images/happy.png', height: 250, width: 250,),
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
                          onPressed: () => _questionThree(context),
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
