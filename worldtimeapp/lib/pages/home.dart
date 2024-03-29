import 'package:flutter/material.dart';
import 'package:worldtimeapp/pages/loading.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Column(
          children: <Widget>[
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text('Edit Location'),

            ),
            RaisedButton.icon(
              onPressed: (){
                Navigator.pushNamed(context, '/Loading');
              },
              color: Colors.amberAccent,
              icon: Icon(Icons.send),
              label: Text('Http get request'),

            ),



          ],
        ),

      ),
    );
  }
}
