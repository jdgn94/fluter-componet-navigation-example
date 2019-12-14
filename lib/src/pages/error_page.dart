import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text("Pagina no encontrada"),
      ),
    );
  }
}
