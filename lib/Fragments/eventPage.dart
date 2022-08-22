import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_health/Fragments/contactPage.dart';
import 'package:mental_health/common_widgets/custom_raised_button.dart';
import 'package:mental_health/navigationDrawer/drawer.dart';

class EventPage extends StatelessWidget {
  static const String routeName = '/eventPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff82c0cc),
        appBar: AppBar(
          title: Text(
            "Upcoming Events",
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ),
        ),
        drawer: NavigationDrawer(),
        body: const MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget{
  const MyStatelessWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Image(
                    image: AssetImage('images/calendar-icon.png'),
                  ),
                  title: Text('Art of Wellness Festival\n'),
                  subtitle: Text('Bridging communities to physical & mental wellness through dance performances, photo galleries, poetry slams and much more.\n\nDate: 2nd October 2022, Sunday\nVenue:JLN Stadium, Delhi'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CustomRaisedButton(
                        height: 30,
                        child: Text('Buy Tickets',
                          style: TextStyle(color: Color(0xffede7e3)),
                        ),
                        onPressed: (){},
                        color: Color(0xff16697a),
                      ),
                    ),
                    const SizedBox(width: 8.0,),
                  ],
                ),
                Divider(),
                const ListTile(
                  leading: Image(
                    image: AssetImage('images/calendar-icon.png'),
                  ),
                  title: Text('Alive: Mental Health Fair\n'),
                  subtitle: Text('Suicide is the 2nd leading cause of death among college students. Destigmatize the discussion of mental health through fun, innovative & informational activities that students will love to participate in.\n\nDate: 9th October 2022, Sunday\nVenue: Amity University, Noida'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CustomRaisedButton(
                        height: 30,
                        child: Text('Buy Tickets',
                          style: TextStyle(color: Color(0xffede7e3)),
                        ),
                        onPressed: (){},
                        color: Color(0xff16697a),
                      ),
                    ),
                    const SizedBox(width: 8.0,),
                  ],
                ),
                Divider(),
                const ListTile(
                  leading: Image(
                    image: AssetImage('images/calendar-icon.png'),
                  ),
                  title: Text('Mental Health Matters\n'),
                  subtitle: Text('HOPE in partnership with How About Hope, Inc. brings \'Mental Health Matters\', a night of wellness, self-care, and mental health awareness.\n\nDate: 11th October 2022, Tuesday\nVenue: HOPE Ecosphere, Bangalore'),
                ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CustomRaisedButton(
                        height: 30,
                        child: Text('Buy Tickets',
                          style: TextStyle(color: Color(0xffede7e3)),
                        ),
                        onPressed: (){},
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