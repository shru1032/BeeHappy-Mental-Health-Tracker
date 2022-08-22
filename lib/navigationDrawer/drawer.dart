import 'package:flutter/material.dart';
import 'package:mental_health/Routes/pageRoute.dart';
import '../Widgets/createDrawerBodyItem.dart';
import '../Widgets/createDrawerHeader.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffede7e3),
      child: Column(
        children:<Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                createDrawerHeader(),
                createDrawerBodyItem(
                  icon: Icons.home,
                  text: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                  onTap: ()=>Navigator.pushReplacementNamed(context, pageRoutes.home),
                ),
                createDrawerBodyItem(
                  icon: Icons.account_circle,
                  text: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                  onTap: ()=>Navigator.pushReplacementNamed(context, pageRoutes.profile),
                ),
                createDrawerBodyItem(
                  icon: Icons.help_center,
                  text: Text(
                    'Get Medical Help',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                  onTap: ()=>Navigator.pushReplacementNamed(context, pageRoutes.help),
                ),
                Divider(),
                createDrawerBodyItem(
                  icon: Icons.event_note,
                  text: Text(
                    'Events',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                  onTap: ()=>Navigator.pushReplacementNamed(context, pageRoutes.event),
                ),
                createDrawerBodyItem(
                  icon: Icons.notifications_active,
                  text: const Text(
                    'Notifications',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                    onTap: ()=>Navigator.pushReplacementNamed(context, pageRoutes.notification),
                ),
                createDrawerBodyItem(
                  icon: Icons.contact_phone,
                  text: const Text(
                    'Contact Info',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                  onTap: ()=>Navigator.pushReplacementNamed(context, pageRoutes.contact),
                ),
                ListTile(
                  title: const Text(
                    'App version 1.0.0',
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
