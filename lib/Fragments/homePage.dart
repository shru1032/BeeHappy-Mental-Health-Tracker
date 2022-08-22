import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mental_health/Screens/dashboard.dart';
import 'package:mental_health/Screens/tasks.dart';
import 'package:mental_health/common_widgets/show_alert_dialog.dart';
import 'package:mental_health/navigationDrawer/drawer.dart';
import 'package:mental_health/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/homePage';

  Future<void> _signOut(BuildContext context) async {
    try {
      final auth = Provider.of<AuthBase>(context, listen: false);
      await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _confirmSignOut(BuildContext context) async {
    final didRequestSignOut = await showAlertDialog(
        context,
        title: 'Logout',
        content: 'Are you sure that you want to logout?',
        cancelActionText: 'Cancel',
        defaultActionText: 'Logout',
    );
    if (didRequestSignOut==true){
      _signOut(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xff82c0cc),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'BeeHappy',
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(
                fontSize: 25.0,
                color: Color(0xffede7e3),
              ),
            ),
            textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xffede7e3),
                ),
              ),
              onPressed: ()=>_confirmSignOut(context),
            ),
          ],
        ),
        drawer: NavigationDrawer(),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Color(0xff489fb5),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: TabBar(
                  indicatorColor: Colors.black,
                  indicator: DotIndicator(
                    color: Colors.black,
                    distanceFromCenter: 16,
                    radius: 3,
                    paintingStyle: PaintingStyle.stroke,
                  ),
                  labelColor: Colors.black,
                  unselectedLabelColor: Color(0xff16697a),
                  tabs: const [
                    Tab(text: 'Dashboard'),
                    Tab(text: 'Tasks'),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    Center(child: Dashboard(),),
                    Center(child: Tasks(),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
