import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.14,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              SizedBox(height:20.0),
              ExpansionTile(
                title: Text(
                  "Title",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                        'data'
                    ),
                  ),
                  ListTile(
                    title: Text(
                        'data'
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text(
                  "Title",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                        'data'
                    ),
                  ),
                  ListTile(
                    title: Text(
                        'data'
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text(
                  "Title",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                        'data'
                    ),
                  ),
                  ListTile(
                    title: Text(
                        'data'
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text(
                  "Title",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                        'data'
                    ),
                  ),
                  ListTile(
                    title: Text(
                        'data'
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}