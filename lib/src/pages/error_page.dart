import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error page"),
      ),
      body: Center(
        child: Text("Pagina no encontrada"),
      ),
    );
  }
}
