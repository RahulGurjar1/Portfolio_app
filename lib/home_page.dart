import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/widgets/handle_bar.dart';
import 'package:portfolio_app/acad_page.dart';

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 7.0),
            child: CircleAvatar(
              radius: 80.0,
              backgroundImage: NetworkImage(
                  'https://static.vecteezy.com/system/resources/previews/019/166/308/original/lion-head-lion-logo-symbol-gaming-logo-elegant-element-for-brand-abstract-symbols-vector.jpg'),
            ),
          ),
          Text(
            'Rahul Gurjar',
            style: TextStyle(
              fontFamily: 'Pacifico',
              color: Colors.white,
              fontSize: 40.0,
            ),
          ),
          Text(
            'ELECTRICAL ENGINEERING',
            style: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 20.0,
              color: Colors.teal.shade100,
              letterSpacing: 2.5,
            ),
          ),
          Text(
            'IIT JODHPUR',
            style: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 20.0,
              color: Colors.teal.shade100,
              letterSpacing: 2.5,
            ),
          ),
          SizedBox(
            height: 20.0,
            width: 180.0,
            child: Divider(
              thickness: 0.7,
              color: Colors.teal.shade400,
            ),
          ),
          Card(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+91 7014789655',
                  style: TextStyle(
                    fontFamily: 'RobotoCondensed',
                    fontSize: 16.0,
                    color: Colors.teal,
                    letterSpacing: 2.5,
                  ),
                ),
              )),
          Card(
              margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 30.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'rahuldoi1493@gmail.com',
                  style: TextStyle(
                    fontFamily: 'RobotoCondensed',
                    fontSize: 16.0,
                    color: Colors.teal,
                    letterSpacing: 2.5,
                  ),
                ),
              )),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            child: HandleBar(),
          ),
          SizedBox(
            height: 60.0,
            width: 150.0,
            // child: Divider(
            //   thickness: 0.5,
            //   color: Colors.teal.shade200,
            // ),
          ),
        ],
      ),
    );
  }
}
