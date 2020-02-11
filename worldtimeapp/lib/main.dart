

import 'package:flutter/material.dart';
import 'package:worldtimeapp/pages/chodse_location.dart';
import 'package:worldtimeapp/pages/home.dart';
import 'package:worldtimeapp/pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/':(context) => Loading(),
    '/home':(context) => Home(),
    '/location':(context) => ChooseLocation(),
    '/Loading' :(context) => Loading(),

  },
));
