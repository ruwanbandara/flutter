import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ChooseLocation> {
  @override
  void initState(){
    super.initState();


  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('Choose Locatin Screen'),
    );
  }
}
