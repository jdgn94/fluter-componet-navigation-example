import 'package:flutter/material.dart';

import 'dart:async';

class ListviewPage extends StatefulWidget {
  @override
  _ListviewPageState createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _listInt = new List();
  int _lastNumber = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _add10Numbers();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // _add10Numbers();
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Stack(
        children: <Widget>[
          _createList(),
          _createLoading(),
        ],
      ),
    );
  }

  Widget _createList() {
    return RefreshIndicator(
      onRefresh: _reloadPage,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _listInt.length,
        itemBuilder: (BuildContext context, int index) {
          final _imageIndex = _listInt[index];
          return FadeInImage(
            image:
                NetworkImage('https://picsum.photos/id/$_imageIndex/500/300'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            height: 300,
          );
        },
      ),
    );
  }

  Future<Null> _reloadPage() async {
    final duration = new Duration(seconds: 2);

    new Timer(duration, () {
      _listInt.clear();
      _add10Numbers();
    });

    return Future.delayed(duration);
  }

  void _add10Numbers() {
    for (int i = 1; i < 10; i++) {
      _lastNumber++;
      _listInt.add(_lastNumber);
    }
    setState(() {});
  }

  Future _fetchData() async {
    setState(() {
      _isLoading = true;
    });

    final duration = new Duration(seconds: 2);

    new Timer(duration, responseHTTP);
  }

  void responseHTTP() {
    _isLoading = false;
    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 200),
    );
    _add10Numbers();
  }

  Widget _createLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ),
          Container(height: 15),
        ],
      );
    } else {
      return Container();
    }
    // return _isLoading ? CircularProgressIndicator() : Container();
  }
}
