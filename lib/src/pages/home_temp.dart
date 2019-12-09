import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {
  final _options = ["uno", "dos", "tres", "cuatro", "cinco"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componets temp"),
      ),
      body: ListView(
        // children: _createElements(),
        children: _createList(),
      ),
    );
  }

  // List<Widget> _createElements() {
  //   List<Widget> lista = new List<Widget>();

  //   for (var opt in _options) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );
  //     lista..add(tempWidget)..add(Divider());
  //   }
  //   return lista;
  // }

  List<Widget> _createList() {
    return _options.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text("Esto es un sub-titulo"),
            leading: Icon(Icons.add_location),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
