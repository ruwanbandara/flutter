import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
class HttpScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container();
  }

}
Future<studentModel> getStudent(){

}