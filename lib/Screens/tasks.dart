import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_health/Widgets/custom_raised_button.dart';

class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:<Widget>[
            Card(
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff16697a), width: 5),
                    borderRadius: BorderRadius.circular(5.0),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/tea-event.png'),
                    ),
                  ),
              ),
            ),
            Text('Host a tea/coffee event',
              textAlign: TextAlign.justify,
              style: GoogleFonts.pacifico(
                textStyle: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomRaisedButton(
                    height: 30,
                    child: Text('Done',
                    style: TextStyle(color: Color(0xffede7e3)),),
                    onPressed: (){},
                    color: Color(0xff16697a),
                  ),
                ),
              ],
            ),
            Divider(),
            Card(
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff16697a), width: 5),
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/physical-activity.png'),
                  ),
                ),
              ),
            ),
            Text('Get physical and be a sport',
              textAlign: TextAlign.left,
              style: GoogleFonts.pacifico(
                textStyle: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomRaisedButton(
                    height: 30,
                    child: Text('Done',
                      style: TextStyle(color: Colors.white),),
                    onPressed: (){},
                    color: Color(0xff16697a),
                  ),
                ),
              ],
            ),
            Divider(),
            Card(
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff16697a), width: 5),
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/outdoor-event.png'),
                  ),
                ),
              ),
            ),
            Text('Have an outdoor event day',
              textAlign: TextAlign.left,
              style: GoogleFonts.pacifico(
                textStyle: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomRaisedButton(
                    height: 30,
                    child: Text('Done',
                      style: TextStyle(color: Colors.white),),
                    onPressed: (){},
                    color: Color(0xff16697a),
                  ),
                ),
              ],
            ),
            Divider(),
            Card(
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff16697a), width: 5),
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/discuss-mental-health.png'),
                  ),
                ),
              ),
            ),
            Text('Discuss your Mental Health',
              textAlign: TextAlign.left,
              style: GoogleFonts.pacifico(
                textStyle: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomRaisedButton(
                    height: 30,
                    child: Text('Done',
                      style: TextStyle(color: Colors.white),),
                    onPressed: (){},
                    color: Color(0xff16697a),
                  ),
                ),
              ],
            ),
            Divider(),
            Card(
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff16697a), width: 5),
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/party.png'),
                  ),
                ),
              ),
            ),
            Text('Have a dance party',
              textAlign: TextAlign.left,
              style: GoogleFonts.pacifico(
                textStyle: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomRaisedButton(
                    height: 30,
                    child: Text('Done',
                      style: TextStyle(color: Colors.white),),
                    onPressed: (){},
                    color: Color(0xff16697a),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

