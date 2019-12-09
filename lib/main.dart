import 'package:flutter/material.dart';

import 'src/routes/routes.dart';
import 'src/pages/error_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components App',
      // home: HomePage(),
      initialRoute: 'home',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Se llamo a la ruta ${settings.name}');
        final route = MaterialPageRoute(builder: (context) => ErrorPage());
        Navigator.push(context, route);
      },
    );
  }
}
