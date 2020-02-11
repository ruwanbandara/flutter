import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'studentModel.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<studentModel>(
          future: getStudent(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              final student = snapshot.data;
              return Text("Name : ${student.name} \n Slill : ${student.skill}");
            }else if(snapshot.hasError){
              return Text(snapshot.error.toString());
            }
            return CircularProgressIndicator();
          },

        ),

      )
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
Future<studentModel> getStudent() async{
  final url = "https://api.jsonbin.io/b/5e1219328d761771cc8b9394";
  final response = await http.get(url);

  if(response.statusCode == 200){
    final jsonStudent = jsonDecode(response.body);
    return studentModel.fromJson(jsonStudent);
  }else{
    throw Exception();
  }



}