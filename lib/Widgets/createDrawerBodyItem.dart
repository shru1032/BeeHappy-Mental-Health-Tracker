import 'package:flutter/material.dart';

class createDrawerBodyItem extends StatelessWidget {
  const createDrawerBodyItem({Key? key,
  required this.icon,
  required this.text,
  required this.onTap
  }) : super(key: key);
  final IconData icon;
  final Text text;
  final GestureTapCallback onTap;
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Color(0xffede7e3),
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: text,
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
