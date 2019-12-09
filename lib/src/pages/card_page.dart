import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardType1(),
          SizedBox(
            height: 30,
          ),
          _cardType2(),
          SizedBox(
            height: 30,
          ),
          _cardType1(),
          SizedBox(
            height: 30,
          ),
          _cardType2(),
          SizedBox(
            height: 30,
          ),
          _cardType1(),
          SizedBox(
            height: 30,
          ),
          _cardType2(),
          SizedBox(
            height: 30,
          ),
          _cardType1(),
          SizedBox(
            height: 30,
          ),
          _cardType2(),
          SizedBox(
            height: 30,
          ),
          _cardType1(),
          SizedBox(
            height: 30,
          ),
          _cardType2(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  _cardType1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text("Aqui va el titulo de la tarjeta"),
            subtitle: Text(
                "Asi se supone que deberia ir una breve descripcion de la tarjeta pero como no tengo ninguna porque soy una muestra y tengo flojera de pensa en algo ingenioso pongo toda esta paja loca como una \"descripcion\""),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text("Cancelar"),
                onPressed: () {},
              ),
              FlatButton(
                child: Text("Ok"),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  _cardType2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://cdn.mos.cms.futurecdn.net/FUE7XiFApEqWZQ85wYcAfM-970-80.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 210,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage(
          //       'https://upload.wikimedia.org/wikipedia/commons/8/81/Parque_Eagle_River%2C_Anchorage%2C_Alaska%2C_Estados_Unidos%2C_2017-09-01%2C_DD_02.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("No se que poner"),
          ),
        ],
      ),
    );
  }
}
