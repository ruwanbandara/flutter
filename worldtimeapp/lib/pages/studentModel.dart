
import 'dart:convert';

class studentModel{
  final String name;
  final String skill;
  final String education;

  studentModel({this.name, this.skill, this.education});

  factory studentModel.fromJson(final json){
    return studentModel(
      name: json["name"],
      skill: json["skill"],
      education: json["education"]

    );
  }

}