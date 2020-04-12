import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(2.0, 0.0), // 10% of the width, so there are ten blinds.
                colors: [const Color(0xFFFFFFEE), const Color(0xFF999999)], // whitish to gray
                tileMode: TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('images/saad.jpg'),
                ),
                Text('SAAD HAMID',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    )),
                Text('FLUTTER DEVELOPER',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 14.0,
                      color: Colors.black38,
                      fontWeight: FontWeight.normal,
                    )),
                SizedBox(
                  width: 200.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 90.0),
                  color: Colors.white,
                  child: ExpansionTile(
                    leading: Icon(Icons.phone),
                    title: Text('Phone'),
                    children: <Widget>[
                      ListTile(
                        title: Text('+92 301 8970012'),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 90.0),
                  color: Colors.white,
                  child: ExpansionTile(
                    leading: Icon(Icons.alternate_email),
                    title: Text('Contact'),
                    children: <Widget>[
                      ListTile(
                        title: Text('saadhamid@me.com'),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 90.0),
                  child: ExpansionTile(
                    leading: Icon(Icons.link),
                    title: Text('Website'),
                    children: <Widget>[
                      ListTile(
                        title: Text('www.saadhamid.me'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
