import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar page"),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://elpais.com/elpais/imagenes/2018/11/13/gente/1542123826_040867_1542176366_noticia_fotograma.jpg'),
              radius: 23.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.purple,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://wallpapercave.com/wp/wp3188330.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
