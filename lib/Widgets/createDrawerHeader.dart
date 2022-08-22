import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class createDrawerHeader extends StatelessWidget {
  const createDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Stack(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
                'Shruti Gupta',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
                'shruti1032002@gmail.com',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xff16697a),
            ),
            currentAccountPicture: CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xff82c0cc),
              child: Image.asset('images/bee.png'),
            ),
          ),
        ],
      ),
    );
  }
}
