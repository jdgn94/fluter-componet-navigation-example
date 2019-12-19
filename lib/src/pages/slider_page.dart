import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _imageSize = 100.0;
  bool _blockSlider = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listas"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createCheck(),
            _createSwitch(),
            Expanded(child: _createImage()),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen $_imageSize',
      value: _imageSize,
      min: 0.0,
      max: 400.0,
      // divisions: 20, // Se usa para poner la lineas guias en el slider segun la cantidad de espacio que uno decee, el label sale solo con esta opcion
      onChanged: _blockSlider
          ? null
          : (value) {
              setState(() {
                _imageSize = value;
              });
            },
    );
  }

  Widget _createCheck() {
    // return Checkbox(
    //   value: _blockSlider,
    //   onChanged: (value) {
    //     setState(() {
    //       _blockSlider = value;
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _blockSlider,
      onChanged: (value) {
        setState(() {
          _blockSlider = value;
        });
      },
    );
  }

  Widget _createSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _blockSlider,
      onChanged: (value) {
        setState(() {
          _blockSlider = value;
        });
      },
    );
  }

  Widget _createImage() {
    return FadeInImage(
      image: NetworkImage(
          'http://www.pngall.com/wp-content/uploads/4/Justice-League-PNG.png'),
      placeholder: AssetImage('assets/jar-loading.gif'),
      fadeInDuration: Duration(milliseconds: 200),
      width: _imageSize,
      fit: BoxFit.contain,
    );
  }
}
