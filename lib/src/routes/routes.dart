import 'package:flutter/material.dart';

import 'package:componets/src/pages/alert_page.dart';
import 'package:componets/src/pages/avatar_page.dart';
import 'package:componets/src/pages/home_page.dart';
import 'package:componets/src/pages/card_page.dart';
import 'package:componets/src/pages/animated_container_page.dart';
import 'package:componets/src/pages/input_page.dart';
import 'package:componets/src/pages/slider_page.dart';
import 'package:componets/src/pages/listview_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'input': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListviewPage(),
  };
}
