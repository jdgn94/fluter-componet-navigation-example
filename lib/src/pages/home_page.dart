import 'package:flutter/material.dart';

import 'package:componets/src/providers/menu_provider.dart';
import 'package:componets/src/utils/icons_string_util.dart';
import 'package:componets/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // print(menuProvider.options);
    // menuProvider.loadData().then((options) {});
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _items(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _items(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];

    data.forEach((item) {
      final widgetTemp = ListTile(
        title: Text(item['texto']),
        leading: getIcon(item['icon']),
        trailing: Icon(
          Icons.chevron_right,
          color: Colors.blue,
        ),
        onTap: () {
          Navigator.pushNamed(context, item['ruta']);
          // metodo tradicional de navegacion
          // final route = MaterialPageRoute(builder: (context) => AlertPage());
          // Navigator.push(context, route);
        },
      );

      options..add(widgetTemp)..add(Divider());
    });

    return options;
  }
}
