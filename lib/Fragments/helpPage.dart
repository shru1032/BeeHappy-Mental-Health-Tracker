import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_health/Widgets/custom_raised_button.dart';
import '../navigationDrawer/drawer.dart';

class HelpPage extends StatelessWidget {
  static const String routeName = '/helpPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff82c0cc),
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            "Get Help",
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 25,
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
                    image: AssetImage('images/doctor1.jpg'),
                  ),
                  title: Text('Dr. Rakhee Varma (PhD)'),
                  subtitle: Text('Psychologist\n21+ years experience\nIndrapuram,Ghaziabad | Feeling & Healing\n₹1200 Consultation fee at clinic'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CustomRaisedButton(
                        height: 30,
                        child: Text('Book an appointment',
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
                  leading:Image(
                    image: AssetImage('images/doctor2.jpg'),
                  ),
                  title: Text('Dr. Sunita Makkar (PhD)'),
                  subtitle: Text('Psychologist\n35+ years experience\nLohia Nagar,Ghaziabad | Personality Development Centre\n₹1000 Consultation fee at clinic'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CustomRaisedButton(
                        height: 30,
                        child: Text('Book an appointment',
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
                    image: AssetImage('images/doctor3.jpg'),
                  ),
                  title: Text('Dr.(Prof) RK Suri (PhD)'),
                  subtitle: Text('Psychologist\n38+ years experience\nJanakpuri, Delhi | Psychowellness Centre + 13 more\n₹4000 Consultation fee at clinic'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CustomRaisedButton(
                        height: 30,
                        child: Text('Book an appointment',
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