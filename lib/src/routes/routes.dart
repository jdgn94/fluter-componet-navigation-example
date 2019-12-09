import 'package:flutter/material.dart';

import 'package:componets/src/pages/alert_page.dart';
import 'package:componets/src/pages/avatar_page.dart';
import 'package:componets/src/pages/home_page.dart';
import 'package:componets/src/pages/card_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage()
  };
}
