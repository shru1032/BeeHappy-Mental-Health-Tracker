import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_health/common_widgets/custom_raised_button.dart';

import '../navigationDrawer/drawer.dart';

class ContactPage extends StatelessWidget {
  static const String routeName = '/contactPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff82c0cc),
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            "Contact Us",
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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        heightFactor: 200,
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Image(
                  image: AssetImage('images/contact-icon.png'),
                ),
                title: Text('Reach out to us at:\nshruti1032002@gmail.com\n'),
                subtitle: Text('Founder: BeeHappy\nMobile No.: 7011006021'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CustomRaisedButton(
                        height: 30,
                        child: Text('Call',
                          style: TextStyle(color: Color(0xffede7e3)),
                        ),
                        onPressed: (){},
                        color: Color(0xff16697a),
                    ),
                  ),
                  const SizedBox(width: 8.0,),
                  CustomRaisedButton(
                    height: 30,
                    child: Text('Mail',
                      style: TextStyle(color: Color(0xffede7e3)),
                    ),
                    onPressed: (){},
                    color: Color(0xff16697a),
                  ),
                  const SizedBox(width: 8.0,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  
}